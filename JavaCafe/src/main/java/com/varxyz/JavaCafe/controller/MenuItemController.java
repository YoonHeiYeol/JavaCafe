package com.varxyz.JavaCafe.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.varxyz.JavaCafe.domain.MenuItemCommand;
import com.varxyz.JavaCafe.domain.MenuCategory;
import com.varxyz.JavaCafe.domain.MenuImage;
import com.varxyz.JavaCafe.domain.MenuItem;
import com.varxyz.JavaCafe.service.MenuCategoryServiceImpl;
import com.varxyz.JavaCafe.service.MenuItemService;
import com.varxyz.JavaCafe.service.MenuItemServiceImpl;

@Controller("controller.menuItemController")
public class MenuItemController {
	@Autowired
	MenuItemServiceImpl menuItemService;
	@Autowired
	MenuCategoryServiceImpl menuCategoryService;
	
	@GetMapping("pages/add_menu_item")
	public String addMenuItemForm(Model model, HttpServletRequest request) {
		model.addAttribute("menuItem", new MenuItem());
		List<MenuCategory> menuCategoryList =
				menuCategoryService.getAllMenuCategory();
		request.setAttribute("menuCategoryList", menuCategoryList);							
		
		List<MenuImage> menuImageList =
				menuItemService.getAllMenuImage();
		request.setAttribute("menuImageList", menuImageList);
		
		return "pages/add_menu_item";
	}
	
	@PostMapping("pages/add_menu_item")
	public String addMenuItem(@ModelAttribute("menuItem")
		MenuItem menuItem, Model model, HttpServletRequest request)
				throws IllegalStateException, IOException {
		
		menuItemService.addMenuItem(menuItem);
		model.addAttribute("menuItem", menuItem);		
		
		return "main";		
	}
	
	@GetMapping("pages/add_img")
	public String addImgForm(Model model, HttpServletRequest request) {
		return "pages/add_img";
	}
	
	@PostMapping("pages/add_img")
	public String addImg(Model model, HttpServletRequest request) {
		return "pages/add_img";
	}
	
	@PostMapping("pages/upload")
	public String upload(@RequestParam("file") MultipartFile file) {
		String fileRealName = file.getOriginalFilename(); //???????????? ????????? ??? ?????? ?????????
		long size = file.getSize(); //?????? ?????????
		
		System.out.println("????????? : "  + fileRealName);
		System.out.println("????????????(byte) : " + size);
		//????????? ????????? ???????????? fileextension?????? .jsp????????????  ????????? ?????? ??????
		String fileExtension = fileRealName.substring(fileRealName.lastIndexOf(".")
				,fileRealName.length());
		String uploadFolder = "/Users/here/Desktop/Here/Eclipse/eclipse-workspace/JavaCafe/src/main/webapp/resources/upload_img/";
		UUID uuid = UUID.randomUUID();
		System.out.println(uuid.toString());
		String[] uuids = uuid.toString().split("-");
				
		String uniqueName = uuids[0];
		System.out.println("????????? ???????????????" + uniqueName);
		System.out.println("????????????" + fileExtension);
		// File saveFile = new File(uploadFolder+"\\"+fileRealName); uuid ?????? ???
		
		File saveFile = new File(uploadFolder+"/"+uniqueName + fileExtension); // ?????? ???
		try {
			file.transferTo(saveFile); // ?????? ?????? ???????????????(filewriter ????????? ????????? ????????? ???????????????.)
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		//DB??????
		MenuImage menuImg = new MenuImage();
		
		menuImg.setCateCode("?????????");
		menuImg.setImgName(fileRealName);
		menuImg.setImgSource(uniqueName);
		menuImg.setImgUrl(uploadFolder);
		menuItemService.addMenuItemImg(menuImg);
		
		return "main";
	}
	
	@GetMapping("/pages/find_all_menu_image")
	public String findAllMenuImageForm(HttpServletRequest request) {
			
		return "pages/find_all_menu_image";
	}
	
	@PostMapping("/pages/find_all_menu_image")
	public String findAllMenuImage(HttpServletRequest request) {
			
		List<MenuImage> menuImageList = menuItemService.getAllMenuImage();
		request.setAttribute("menuImageList", menuImageList);
		
		return "pages/find_all_menu_image";
	}
	
}


