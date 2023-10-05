package bookevent;

public class Event {
	private int id;
    private String ename;
    private String edate;
    private String venue;
    private String guests;
    private String efood;
    private String emeal;
    private String equp;
    

    public int getId() {
        return id;
    }
    

    public void setId(int id) {
      this.id = id;
    }

    public String getEname() {
        return ename;
    }
    
    public void setEname(String ename) {
        this.ename = ename;
      }

    public String getEdate() {
        return edate;
    }
    
    public void setEdate(String edate) {
        this.edate = edate;
      }

    public String getGuests() {
        return guests;
    }
    
    public void setGuests(String guests) {
        this.guests = guests;
      }
    
    public String getVenue() {
        return venue;
    }
    
    public void setVenue(String venue) {
        this.venue = venue;
      }

    public String getEfood() {
        return efood;
    }
    
    public void setEfood(String efood) {
        this.efood = efood;
      }

    public String getEmeal() {
        return emeal;
    }  
    
    public void setEmeal(String emeal) {
        this.emeal = emeal;
      }
    
    public String getEqup() {
        return equp;
    }
    
    public void setEqup(String equp) {
        this.equp =equp;
      }
    
    public Event(String ename, String edate, String venue, String guests, String efood, String emeal, String equp) 
    {
    	super();
	this.ename = ename;
	this.edate = edate;
	this.venue = venue;
	this.guests = guests;
	this.efood = efood;
	this.emeal = emeal;
	this.equp = equp;
    }
    
    public Event() {
        super();
      }
}

