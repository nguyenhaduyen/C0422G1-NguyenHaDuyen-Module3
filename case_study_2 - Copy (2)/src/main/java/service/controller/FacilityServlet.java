package service.controller;

import service.model.Facility;
import service.model.TypeRent;
import service.model.TypeService;
import service.service.IFacilityService;
import service.service.ITypeRentService;
import service.service.ITypeServiceService;
import service.service.impl.FacilityService;
import service.service.impl.TypeRentService;
import service.service.impl.TypeServiceService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "FacilityServlet", urlPatterns = "/facility")
public class FacilityServlet extends HttpServlet {
    IFacilityService facilityService = new FacilityService();
    ITypeRentService typeRentService = new TypeRentService();
    ITypeServiceService typeServiceService = new TypeServiceService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                showFormAdd(request, response);
                break;
            case "update":
                showFormUpdate(request,response);
                break;
            case "delete":
                delete (request,response);
                break;
            default:
                showFacility(request, response);
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                saveFormAdd(request, response);
                break;
            case "update":
                saveFormUpdate(request, response);
                break;
            default:
                showFacility(request, response);
        }
    }

    private void saveFormUpdate(HttpServletRequest request, HttpServletResponse response) {
        int serviceCode = Integer.parseInt(request.getParameter("serviceCode"));
        String serviceName = request.getParameter("serviceName");
        int area = Integer.parseInt(request.getParameter("dt"));
        double cost = Double.parseDouble(request.getParameter("cp"));
        int maxPeople = Integer.parseInt(request.getParameter("nguoi"));
        String standardRoom = request.getParameter("tc");
        String descriptionOtherConvenience = request.getParameter("mota");
        int poolArea = Integer.parseInt(request.getParameter("pool"));
        String numberOfFloor = request.getParameter("floor");
        String facilityFree = request.getParameter("dvmp");
        int rentTypeId = Integer.parseInt(request.getParameter("kieuThue"));
        int codeTypeService = Integer.parseInt(request.getParameter("sv"));
        Facility facility = new Facility(serviceCode,serviceName,area,cost,maxPeople,standardRoom,descriptionOtherConvenience,poolArea,numberOfFloor,facilityFree,rentTypeId,codeTypeService);
        facilityService.update(facility);
        showFacility(request,response);

    }

    private void showFormUpdate(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Facility facility = facilityService.findById(id);
        List<TypeRent> typeRentList = typeRentService.findAll();
        List<TypeService> typeServiceList = typeServiceService.findAll();
        request.setAttribute("facility",facility);
        request.setAttribute("typeRentList",typeRentList);
        request.setAttribute("typeService",typeServiceList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/service/update_service.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    private void delete(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        facilityService.delete(id);
        showFacility(request,response);
    }

    private void saveFormAdd(HttpServletRequest request, HttpServletResponse response) {
        String serviceName = request.getParameter("serviceName");
        int area = Integer.parseInt(request.getParameter("area"));
        double cost = Double.parseDouble(request.getParameter("cost"));
        int maxPeople = Integer.parseInt(request.getParameter("people"));
        String standardRoom = request.getParameter("standard");
        String descriptionOtherConvenience = request.getParameter("other");
        int poolArea = Integer.parseInt(request.getParameter("pool"));
        String numberOfFloor = request.getParameter("floor");
        String facilityFree = request.getParameter("serviceFree");
        int rentTypeId = Integer.parseInt(request.getParameter("typeRent"));
        int codeTypeService = Integer.parseInt(request.getParameter("service"));
        Facility facility = new Facility(serviceName, area, cost, maxPeople, standardRoom, descriptionOtherConvenience, poolArea, numberOfFloor, facilityFree, rentTypeId, codeTypeService);
        Map<String, String> errors = facilityService.checkValidateFacility(facility);
        if (errors.isEmpty()) {
            facilityService.add(facility);
            showFacility(request, response);
        } else {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/service/add_new_service.jsp");
            request.setAttribute("errors", errors);
            request.setAttribute("facility", facility);
            try {
                requestDispatcher.forward(request,response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void showFormAdd(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/service/add_new_service.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFacility(HttpServletRequest request, HttpServletResponse response) {
        List<Facility> facilityList = facilityService.findAll();
        List<TypeRent> typeRentServices = typeRentService.findAll();
        List<TypeService> typeServiceList = typeServiceService.findAll();
        request.setAttribute("facility", facilityList);
        request.setAttribute("typeRent", typeRentServices);
        request.setAttribute("typeService", typeServiceList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/service/list_service.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
