package com.mm.market.reservation;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mm.market.product.ProductController;
import com.mm.market.product.ProductService;
import com.mm.market.product.ProductVO;

@Controller
@RequestMapping("/reservation/**")
public class ReservationController {

	@Autowired
	ReservationService reservationService;
	
	@Autowired
	ProductService productService;
	
	@GetMapping
	public void insert(String seller,String buyer,HttpServletRequest http)throws Exception{
		
		String productNum = http.getParameter("productNum");
		
		System.out.println(productNum);
		
		System.out.println(seller);
		System.out.println(buyer);
	}
}
