package web.mongo;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bson.Document;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;

import web.mongo.db.ConnectionManager;
import web.mongo.db.modal.Zip;

/**
 * Servlet implementation class FormServlet
 */
@WebServlet("/FormServlet")
public class FormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FormServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at:
		// ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		String option = request.getParameter("option");
		System.out.println(option);
		String ptitle = request.getParameter("ptitle");
		System.out.println(ptitle);
		String city = request.getParameter("city");
		String pcode = request.getParameter("pcode");
		String description = request.getParameter("description");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		
		MongoClient connection = ConnectionManager.getMongo();
		MongoDatabase db = ConnectionManager.getDb("test");
		MongoCollection<Document> collection = db.getCollection("adsData");

		Document d1 = new Document("option", option).append("postalTitle", ptitle).append("city", city)
				.append("postalcode", pcode).append("description", description).append("email", email)
				.append("phone", phone);
		
		collection.insertOne(d1);
		
		MongoCursor<Document> cursor = collection.find().limit(30).iterator();

		List<Zip> dataList = new LinkedList<>();

		while (cursor.hasNext()) {
			Document d = (Document) cursor.next();

			Zip zip = new Zip(d.getString("option"), d.getString("postalTitle"),d.getString("city"), d.getString("postalcode"), d.getString("description"), d.getString("email"), d.getString("phone"));
			dataList.add(zip);
		}
		request.setAttribute("list", dataList);
		request.getRequestDispatcher("adspage.jsp").forward(request, response);
	}

}
