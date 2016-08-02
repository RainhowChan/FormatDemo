package cn.rainhowchan.format;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.rainhowchan.domain.Product;
import net.sf.json.JSONArray;

public class JsonRequestServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter writer = response.getWriter();
		List<Product> data=new ArrayList<Product>();
		data.add(new Product(0, "洗衣机", 2000.5));
		data.add(new Product(1, "电视机", 3000));
		data.add(new Product(2, "电冰箱", 1250.8));
		JSONArray json = JSONArray.fromObject(data);
		writer.write(json.toString());
		writer.close();
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
	}

}
