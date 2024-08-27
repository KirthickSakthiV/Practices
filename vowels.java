
import java.util.*;
public class Main
{
	public static void main(String[] args) {
	Scanner s=new Scanner(System.in);
	String m=s.nextLine();
	int n=s.nextInt();
	int a=0;
	for(int i=0;i<m.length();i++)
	{
	    if(m.charAt(i)=='a' ||m.charAt(i)=='e'|| m.charAt(i)=='i'|| m.charAt(i)=='o'|| m.charAt(i)=='u'){
	        System.out.println(m.charAt(i));
	        a++;
	    }
	    if(a==n)
	    {
	        System.exit(0);
	    }
	}
	}
}

