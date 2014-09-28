/**
 * 
 */
package com.kalyan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kalyan.model.Shop;

/**
 * @author srikiran
 *
 */

@Controller
@RequestMapping("/shop")
public class MainController {
	
	@RequestMapping(value="{name}", method = RequestMethod.GET)
	public @ResponseBody Shop getShopInJSON(@PathVariable String name) {
 
		Shop shop = new Shop();
		shop.setName(name);
		shop.setStaffName(new String[]{"Kalyan", "Gurugubelli"});
		return shop;
	}
	
	@RequestMapping(value="test", method = RequestMethod.GET)
	public @ResponseBody Shop getJSON(@PathVariable String name) {
 
		Shop shop = new Shop();
		shop.setName(name);
		shop.setStaffName(new String[]{"Kalyan", "Gurugubelli"});
		return shop;
	}
     	
}
