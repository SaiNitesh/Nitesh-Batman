if(result>0)
    {
    
    RequestDispatcher rd=request.getRequestDispatcher("addmarks.jsp");
    
    out.println("Added successfull");
    rd.include(request,response);
}
else
    {
    RequestDispatcher rd=request.getRequestDispatcher("addmarks.jsp");
    
    out.println("Added Record failed");
    rd.include(request,response);
}