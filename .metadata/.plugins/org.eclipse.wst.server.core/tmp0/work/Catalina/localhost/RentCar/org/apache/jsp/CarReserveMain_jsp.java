/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.43
 * Generated at: 2022-09-02 12:33:35 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import db.CarListBean;
import java.util.Vector;
import db.RentcarDAO;

public final class CarReserveMain_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.util.Vector");
    _jspx_imports_classes.add("db.CarListBean");
    _jspx_imports_classes.add("db.RentcarDAO");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<body>\r\n");
      out.write(" <center>\r\n");
      out.write(" \r\n");
      out.write("        <!-- 데이터베이스에 연결하여 최신순 자동차 3대만 뿌려주는 데이터를 가져옴 -->\r\n");
      out.write(" \r\n");
      out.write("        ");

            RentcarDAO rdao = new RentcarDAO();
            //벡터를 이용하여 자동차데이터를 저장함
            Vector<CarListBean> v = rdao.getSelectCar();
        
      out.write("\r\n");
      out.write(" \r\n");
      out.write("        <table width=\"1000\">\r\n");
      out.write("            <tr height=\"100\">\r\n");
      out.write("                <td align=\"center\" colspan=\"3\">\r\n");
      out.write("                <font size=\"6\" color=\"gray\">\r\n");
      out.write("                최신형 자동차</font>\r\n");
      out.write("                </td>\r\n");
      out.write("            </tr>\r\n");
      out.write(" \r\n");
      out.write("            <tr height=\"240\">\r\n");
      out.write("                <!-- 벡터에 저장된 이미지를 하나씩 출력해야하기 때문에 for문을 돌리고, 그 값들을 빈클래스 변수에 넣어준다. -->\r\n");
      out.write("                ");

                    for (int i = 1; i < v.size(); i++) {
                        CarListBean bean = v.get(i);
                
      out.write("\r\n");
      out.write("                <td width=\"333\" align=\"center\">\r\n");
      out.write("                    <!-- 이미지는 벡터의 0번지에 해당되는걸 가져온다. for문을 돌려 td를 출력해야 한다.--> <!-- 확장자는 이미지안에 있으므로 궂이 적지 않아도 된다. -->\r\n");
      out.write("                    <!-- 이미지를 누르면 바로 상세정보로 넘어갈수 있도록 하기위해  <a>태그를 걸고, No에 대한 상세정보가 출력되도록 하고\r\n");
      out.write("        이름을 사진밑에 출력하도록 한다. --> <a\r\n");
      out.write("                    href=\"RentcarMain.jsp?center=CarReserveInfo.jsp?no=");
      out.print(bean.getNo());
      out.write("\"> <img alt=\"\"\r\n");
      out.write("                        src=\"img/");
      out.print(bean.getImg());
      out.write("\" width=\"300\" height=\"220\">\r\n");
      out.write("                </a>\r\n");
      out.write("                    <p>\r\n");
      out.write("                        차량명 :\r\n");
      out.write("                        ");
      out.print(bean.getName());
      out.write("\r\n");
      out.write("                </td>\r\n");
      out.write(" \r\n");
      out.write(" \r\n");
      out.write("                ");

                    }
                
      out.write("\r\n");
      out.write("            \r\n");
      out.write("        </table>\r\n");
      out.write(" \r\n");
      out.write("        <p>\r\n");
      out.write("            <font size=\"4\" color=\"gray\"> 차량 검색 하기 </font><br> <br> <br>\r\n");
      out.write("            <!-- 종류를 선택하고 검색을 하면 종류라는 데이터들 가지고 넘어가야하기 때문에 form형식을 사용한다. -->\r\n");
      out.write("        <form action=\"RentcarMain.jsp?center=CarCategoryList.jsp\"\r\n");
      out.write("            method=\"post\">\r\n");
      out.write("            <font size=\"3\" color=\"gray\"> <b>차량 검색 하기</b>\r\n");
      out.write("            </font>&nbsp;&nbsp; <select name=\"category\">\r\n");
      out.write("                <option value=\"1\">소형</option>\r\n");
      out.write("                <option value=\"2\">중형</option>\r\n");
      out.write("                <option value=\"3\">대형</option>\r\n");
      out.write("            </select>&nbsp;&nbsp; <input type=\"submit\" value=\"검색\"> &nbsp;&nbsp;\r\n");
      out.write(" \r\n");
      out.write("        </form>\r\n");
      out.write("        <button\r\n");
      out.write("            onclick=\"location.href='RentcarMain.jsp?center=CarAllList.jsp'\">전체\r\n");
      out.write("            검색</button>\r\n");
      out.write(" \r\n");
      out.write("    </center>\r\n");
      out.write("</body>\r\n");
      out.write(" \r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}