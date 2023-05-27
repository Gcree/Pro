package com.shu;
	
	import org.springframework.stereotype.Controller;
	import org.springframework.web.bind.annotation.GetMapping;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestMethod;
	
	@Controller
	public class myController {
		
		@GetMapping("/")
		public String home() {
			return "index.html";
		}
		@RequestMapping(value="/about",method = RequestMethod.GET)
		public String about() {
			return "about.html";
		}
		@GetMapping("/photo")
		public String photo() {
			return "photography.html";
			
		}
		@GetMapping("/video")
		public String video() {
			return "video.html";
			
		}
		@GetMapping("/photo2")
		public String photo2() {
			return "photography.jsp";
			
		}
		
		
	}
