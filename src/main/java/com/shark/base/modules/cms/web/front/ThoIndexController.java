/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.shark.base.modules.cms.web.front;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.common.collect.Lists;
import com.shark.base.common.persistence.Page;
import com.shark.base.common.utils.StringUtils;
import com.shark.base.common.web.BaseController;
import com.shark.base.modules.cms.entity.Article;
import com.shark.base.modules.cms.entity.Category;
import com.shark.base.modules.cms.entity.Link;
import com.shark.base.modules.cms.entity.Site;
import com.shark.base.modules.cms.service.ArticleDataService;
import com.shark.base.modules.cms.service.ArticleService;
import com.shark.base.modules.cms.service.CategoryService;
import com.shark.base.modules.cms.service.CommentService;
import com.shark.base.modules.cms.service.LinkService;
import com.shark.base.modules.cms.service.SiteService;
import com.shark.base.modules.cms.utils.CmsUtils;


//http://localhost:8080/tho 进入首页
@Controller
@RequestMapping(value = "${frontPath}")
public class ThoIndexController extends BaseController{
	
	@Autowired
	private ArticleService articleService;
	@Autowired
	private ArticleDataService articleDataService;
	@Autowired
	private LinkService linkService;
	@Autowired
	private CommentService commentService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private SiteService siteService;
	
	/**
	 * 网站首页
	 * 首页入口
	 */
	@RequestMapping
	public String index(Model model) {
		Site site = CmsUtils.getSite(Site.defaultSiteId());
		model.addAttribute("site", site);
		model.addAttribute("isIndex", true);
				
		return "tho-views/default/thoIndex";
	}
	
	
	/**
	 * 文章详情页
	 */
	@RequestMapping(value="thoArticleContent")
	public String thoArticleContent(Model model) {
		Site site = CmsUtils.getSite(Site.defaultSiteId());
		model.addAttribute("site", site);
		model.addAttribute("isIndex", true);
		return "tho-views/default/thoArticleContent";
	}
	
	
	/**
	 * 点击菜单进入后的页面（栏目列表页）
	 */
	@RequestMapping(value="thoColumnList")
	public String thoColumnList(Model model) {
		Site site = CmsUtils.getSite(Site.defaultSiteId());
		model.addAttribute("site", site);
		model.addAttribute("isIndex", true);
		return "tho-views/default/thoColumnList";
	}
		
	/**
	 * 内容列表  @RequestParam(required=false, defaultValue="3")页面显示条数默认为3条
	 */
	@RequestMapping(value = "list-{categoryId}${urlSuffix}")
	public String list(@PathVariable String categoryId, @RequestParam(required=false, defaultValue="1") Integer pageNo,
			@RequestParam(required=false, defaultValue="3") Integer pageSize, Model model) {
		Category category = categoryService.get(categoryId);
		if (category==null){
			Site site = CmsUtils.getSite(Site.defaultSiteId());
			model.addAttribute("site", site);
			return "error/404";
		}
		Site site = siteService.get(category.getSite().getId());
		model.addAttribute("site", site);
		
		//1、取分类列表
		model.addAttribute("category", category);
		List<Category> categoryList = Lists.newArrayList();
		categoryList = categoryService.findByParentId(category.getId(), category.getSite().getId());
		if(categoryList.size()==0){
			categoryList.add(category);
		}
		model.addAttribute("categoryList", categoryList);
		
		String view = "/thoColumnList"; //博客模板
		if (StringUtils.isNotBlank(category.getCustomListView())){
			view = "/"+category.getCustomListView();
		}
        CmsUtils.addViewConfigAttribute(model, category);
        
        //2、取文章列表
        Category firstCategory = categoryList.get(0);
        Page<Article> page = new Page<Article>(pageNo, pageSize);
		page = articleService.findPage(page, new Article(firstCategory), false);
		model.addAttribute("page", page);
		
		
//		page.initialize();
		
//		model.addAttribute("page", page);
      
		return "tho-views/default/" + view;
		
	}
		
		
		
		//1、获取二级栏目
		
		
		//2、获取所在栏目下的文章列表（所选的二级栏目的文章列表，如果是直接选择一级栏目的，默认获取第一个二级栏目的文章列表）
		
		

	
	
    /**
	 * 显示内容
	 */
	@RequestMapping(value = "view-{categoryId}-{contentId}${urlSuffix}")
	public String view(@PathVariable String categoryId, @PathVariable String contentId, Model model) {
		Category category = categoryService.get(categoryId);
		if (category==null){
			Site site = CmsUtils.getSite(Site.defaultSiteId());
			model.addAttribute("site", site);
			return "tho-views/default/page404";
		}
		model.addAttribute("site", category.getSite());
		if ("article".equals(category.getModule())){
			// 如果没有子栏目，并父节点为跟节点的，栏目列表为当前栏目。
			List<Category> categoryList = Lists.newArrayList();
			if (category.getParent().getId().equals("1")){
				categoryList.add(category);
			}else{
				categoryList = categoryService.findByParentId(category.getParent().getId(), category.getSite().getId());
			}
			// 获取文章内容
			Article article = articleService.get(contentId);
			if (article==null || !Article.DEL_FLAG_NORMAL.equals(article.getDelFlag())){
				return "tho-views/default/page404";
			}
			// 文章阅读次数+1
			articleService.updateHitsAddOne(contentId);
			// 获取推荐文章列表
			List<Object[]> relationList = articleService.findByIds(articleDataService.get(article.getId()).getRelation());
			// 将数据传递到视图
			model.addAttribute("category", categoryService.get(article.getCategory().getId()));
			model.addAttribute("categoryList", categoryList);
			article.setArticleData(articleDataService.get(article.getId()));
			model.addAttribute("article", article);
			model.addAttribute("relationList", relationList); 
            CmsUtils.addViewConfigAttribute(model, article.getCategory());
            CmsUtils.addViewConfigAttribute(model, article.getViewConfig());
            Site site = siteService.get(category.getSite().getId());
            model.addAttribute("site", site);
//			return "modules/cms/front/themes/"+category.getSite().getTheme()+"/"+getTpl(article);
//            return "modules/cms/front/themes/"+site.getTheme()+"/"+getTpl(article);
            return "tho-views/default/thoArticleContent";
		}
		return "tho-views/default/page404";
	}
	
	
	
	/**
	 * 
	 */
	@RequestMapping(value="contact")
	public String contact(Model model) {
		Site site = CmsUtils.getSite(Site.defaultSiteId());
		model.addAttribute("site", site);
		model.addAttribute("isIndex", true);
		return "tho-views/default/contact";
	}
	
	/**
	 * 
	 */
	@RequestMapping(value="2Col")
	public String portfolio2col(Model model) {
		Site site = CmsUtils.getSite(Site.defaultSiteId());
		model.addAttribute("site", site);
		model.addAttribute("isIndex", true);
		return "tho-views/default/portfolio2Col";
	}
	
	/**
	 * 
	 */
	@RequestMapping(value="portfolio3Col")
	public String portfolio3col(Model model) {
		Site site = CmsUtils.getSite(Site.defaultSiteId());
		model.addAttribute("site", site);
		model.addAttribute("isIndex", true);
		return "tho-views/default/portfolio3Col";
	}
	
	/**
	 * 
	 */
	@RequestMapping(value="portfolio")
	public String portfolio(Model model) {
		Site site = CmsUtils.getSite(Site.defaultSiteId());
		model.addAttribute("site", site);
		model.addAttribute("isIndex", true);
		return "tho-views/default/portfolio";
	}
	
	/**
	 * 
	 */
	@RequestMapping(value="services")
	public String services(Model model) {
		Site site = CmsUtils.getSite(Site.defaultSiteId());
		model.addAttribute("site", site);
		model.addAttribute("isIndex", true);
		return "tho-views/default/services";
	}
	
	/**
	 * 
	 */
	@RequestMapping(value="singlePost")
	public String singlePost(Model model) {
		Site site = CmsUtils.getSite(Site.defaultSiteId());
		model.addAttribute("site", site);
		model.addAttribute("isIndex", true);
		return "tho-views/default/singlePost";
	}
	
	/**
	 * 
	 */
	@RequestMapping(value="singleProject")
	public String singleProject(Model model) {
		Site site = CmsUtils.getSite(Site.defaultSiteId());
		model.addAttribute("site", site);
		model.addAttribute("isIndex", true);
		return "tho-views/default/singleProject";
	}
	
	/**
	 * page404页面
	 */
	@RequestMapping(value="page404")
	public String page404(Model model) {
		Site site = CmsUtils.getSite(Site.defaultSiteId());
		model.addAttribute("site", site);
		model.addAttribute("isIndex", true);
		return "tho-views/default/page404";
	}
	
	/**
	 * 
	 */
	@RequestMapping(value="blog")
	public String blog(Model model) {
		Site site = CmsUtils.getSite(Site.defaultSiteId());
		model.addAttribute("site", site);
		model.addAttribute("isIndex", true);
		return "tho-views/default/blog";
	}
	
    
    
}
