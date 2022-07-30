package model;

public class Calculate {
    private double first;
    private double second;
    private String operate;

    public Calculate(double first, double second, String operate) {
        this.first = first;
        this.second = second;
        this.operate = operate;
    }

    public Calculate() {

    }

    public double getFirst() {
        return first;
    }

    public void setFirst(double first) {
        this.first = first;
    }

    public double getSecond() {
        return second;
    }

    public void setSecond(double second) {
        this.second = second;
    }

    public String getOperate() {
        return operate;
    }

    public void setOperate(String operate) {
        this.operate = operate;
    }
    public static double Addition(double first,double second) {
        return first+second;
    }
    public static double Subtraction(double first,double second) {
        return first-second;
    }
    public static double Multiplication(double first,double second) {
        return first*second;
    }
    public static double Division(double first,double second) throws ArithmeticException {
        if (second!=0) {
            return first/second;
        }else {
            throw new ArithmeticException();
        }
    }
    public static double calculate1(double first, double second, String operate) throws ArithmeticException {
        double result=0;
        switch (operate) {
            case "Addition":
                result = Addition(first, second);
                break;
            case "Subtraction":
                result=Subtraction(first,second);
                break;
            case "Multiplication":
                result=Multiplication(first, second);
                break;
            case "Division":
                result= Division(first, second);
                break;
        }
        return result;
    }
}
