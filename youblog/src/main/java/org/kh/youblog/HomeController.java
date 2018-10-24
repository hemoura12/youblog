package org.kh.youblog;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.kh.youblog.member.model.vo.Member;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
@SessionAttributes("member")
public class HomeController {
   
   private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

   @RequestMapping(value = "main.do", method = RequestMethod.GET)
   public String main(Locale locale, Model model) {
      /*logger.info("Welcome home! The client locale is {}.", locale);   
>>>>>>> refs/remotes/origin/기경욱
      Date date = new Date();
      DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);   
      String formattedDate = dateFormat.format(date);   
      model.addAttribute("serverTime", formattedDate );
      System.out.println("요청확인");*/
      return "main";
   }
   @RequestMapping(value = "home.do", method = RequestMethod.GET)
   public ModelAndView home(Locale locale, Model model, ModelAndView mv) {
      
	   Member member = new Member();
	   
	   member.setMemberid("user01");
	   
      mv.addObject("member", member);
      mv.setViewName("main");
      
      return mv;
   }
   @RequestMapping(value = "categoryall.do", method = RequestMethod.GET)
   public String categoryall(Locale locale, Model model) {
      
      return "category/categoryAll";
   }
   @RequestMapping(value = "categoryLife.do", method = RequestMethod.GET)
   public String categoryLife(Locale locale, Model model) {
      
      return "category/lifeCTG";
   }
   @RequestMapping(value = "categoryTravel.do", method = RequestMethod.GET)
   public String categoryTravel(Locale locale, Model model) {
      
      return "category/travelCTG";
   }
   @RequestMapping(value = "categoryCulture.do", method = RequestMethod.GET)
   public String categoryCulture(Locale locale, Model model) {
      
      return "category/cultureCTG";
   }
   @RequestMapping(value = "categoryIT.do", method = RequestMethod.GET)
   public String categoryIT(Locale locale, Model model) {
      
      return "category/itCTG";
   }
   @RequestMapping(value = "categorySport.do", method = RequestMethod.GET)
   public String categorySport(Locale locale, Model model) {
      
      return "category/sportCTG";
   }
   @RequestMapping(value = "categoryCurrent.do", method = RequestMethod.GET)
   public String categoryCurrent(Locale locale, Model model) {
      
      return "category/currentCTG";
   }
   @RequestMapping(value = "favorite.do", method = RequestMethod.GET)
   public String favorite(Locale locale, Model model) {
      
      return "favorite/favorite";
   }
   @RequestMapping(value = "subscription.do", method = RequestMethod.GET)
   public String subscription(Locale locale, Model model) {
      
      return "subscription/subscription";
   }
   @RequestMapping(value = "officialblog.do", method = RequestMethod.GET)
   public String officialblog(Locale locale, Model model) {
      
      return "blog/officialblog";
   }
   @RequestMapping(value = "partnerblog.do", method = RequestMethod.GET)
   public String partnerblog(Locale locale, Model model) {
      
      return "blog/partnerblog";
   }
   @RequestMapping(value = "recentlyviewed.do", method = RequestMethod.GET)
   public String recentlyviewed(Locale locale, Model model) {
      
      return "library/recentlyviewed";
   }
   @RequestMapping(value = "laterview.do", method = RequestMethod.GET)
   public String laterview(Locale locale, Model model) {
      
      return "library/laterview";
   }
   @RequestMapping(value = "likeview.do", method = RequestMethod.GET)
   public String likeview(Locale locale, Model model) {
      
      return "library/likeview";
   }
   /*@RequestMapping(value = "personmain.do", method = RequestMethod.GET)
   public String personmain(Locale locale, Model model) {
      
      return "personblog/personmain";
   }*/
   @RequestMapping(value = "personchannel.do", method = RequestMethod.GET)
   public String personchannel(Locale locale, Model model) {
      
      return "personblog/personchannel";
   }
  /* @RequestMapping(value = "personboard.do", method = RequestMethod.GET)
   public String personboard(Locale locale, Model model) {
      
      return "personblog/personboard";
   }*/
   //member
   @RequestMapping(value = "login.do", method = RequestMethod.GET)
   public String login(Locale locale, Model model) {      
      return "member/loginView";
   }
   @RequestMapping(value = "join.do", method = RequestMethod.GET)
   public String join(Locale locale, Model model) {      
      return "member/join";
   }
   @RequestMapping(value = "sec_join.do", method = RequestMethod.GET)
   public String sec_join(Locale locale, Model model) {      
      return "member/join2";
   }
   @RequestMapping(value = "info.do", method = RequestMethod.GET)
   public String info(Locale locale, Model model) {      
      return "member/memberinfo";
   }   
   @RequestMapping(value = "passchange.do", method = RequestMethod.GET)
   public String passchange(Locale locale, Model model) {      
      return "member/passwordchange";
   }
   @RequestMapping(value = "detailpage.do", method = RequestMethod.GET)
   public String detailpage(Locale locale, Model model) {      
      return "page/detailpage";
   }
   @RequestMapping(value = "writepage.do", method = RequestMethod.GET)
   public String wirtepage(Locale locale, Model model) {      
      return "page/writepage";
   }
   
   

   /*@RequestMapping(value="main.do")
   public String mainView(){
      return "home";
   }*/

}
