package by.shcharbunou.jee.servlet;

import by.shcharbunou.core.service.user.UserService;
import by.shcharbunou.dal.dao.user.UserDao;
import by.shcharbunou.dal.dao.user.impl.UserDaoImpl;
import by.shcharbunou.dal.entity.user.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "SignUpServlet", value = "/pages/sign-up")
public class SignUpServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String surname = req.getParameter("surname");
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone_number");
        String password = req.getParameter("password");
        UserDao userService = UserDaoImpl.getInstance();
        User user = new User();
        user.setName(name);
        user.setSurname(surname);
        user.setUsername(username);
        user.setEmail(email);
        user.setPhone(phone);
        user.setPassword(password);
        // userService.save(user);
        getServletContext().getRequestDispatcher("/pages/sign-in.jsp").forward(req, resp);
    }
}
