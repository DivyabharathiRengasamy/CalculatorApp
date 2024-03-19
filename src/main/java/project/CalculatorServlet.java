package project;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/calculate")
public class CalculatorServlet extends HttpServlet{
	
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
	{
	String expression=request.getParameter("expression");
	 double result=   calculate(expression);
	 request.setAttribute("result", result);
	request.getRequestDispatcher("/calculate.jsp").forward(request, response);
	
	}
	
    private double calculate(String expression) {
        // Split the expression into operands and operator
        String[] operands;
        char operator = ' ';
        if (expression.contains("+")) {
            operands = expression.split("\\+");
            operator = '+';
        } else if (expression.contains("-")) {
            operands = expression.split("-");
            operator = '-';
        } else if (expression.contains("*")) {
            operands = expression.split("\\*");
            operator = '*';
        } else if (expression.contains("/")) {
            operands = expression.split("/");
            operator = '/';
        } else {
            // Invalid expression
            return 0;
        }
        
        // Convert operands to numbers
        double operand1 = Double.parseDouble(operands[0]);
        double operand2 = Double.parseDouble(operands[1]);
        
        // Perform calculation based on the operator
        switch (operator) {
            case '+':
                return operand1 + operand2;
            case '-':
                return operand1 - operand2;
            case '*':
                return operand1 * operand2;
            case '/':
                if (operand2 == 0) {
                    // Division by zero error
                    return Double.POSITIVE_INFINITY; // or handle the error as required
                }
                return operand1 / operand2;
            default:
                // Invalid operator
                return 0;
        }
    }
}
