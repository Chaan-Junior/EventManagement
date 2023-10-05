package addEventPackage;

public class AddEvent {
	private int eventID;
	private String eventType;
	private String venue;
	private String hallCapacity;
	private String cateringType;
	private String mealType;
	private String eventFacilities;
	
	
	public int getEventID() {
		return eventID;
	}
	public void setEventID(int eventID) {
		this.eventID = eventID;
	}
	public String getEventType() {
		return eventType;
	}
	public void setEventType(String eventType) {
		this.eventType = eventType;
	}
	public String getVenue() {
		return venue;
	}
	public void setVenue(String venue) {
		this.venue = venue;
	}
	public String getHallCapacity() {
		return hallCapacity;
	}
	public void setHallCapacity(String hallCapacity) {
		this.hallCapacity = hallCapacity;
	}
	public String getCateringType() {
		return cateringType;
	}
	public void setCateringType(String cateringType) {
		this.cateringType = cateringType;
	}
	public String getMealType() {
		return mealType;
	}
	public void setMealType(String mealType) {
		this.mealType = mealType;
	}
	public String getEventFacilities() {
		return eventFacilities;
	}
	public void setEventFacilities(String eventFacilities) {
		this.eventFacilities = eventFacilities;
	}

	public AddEvent(String eventType, String venue, String hallCapacity, String cateringType, String mealType,String eventFacilities)
			 {
		super();
		this.eventType = eventType;
		this.venue = venue;
		this.hallCapacity = hallCapacity;
		this.cateringType = cateringType;
		this.mealType = mealType;
		this.eventFacilities = eventFacilities;
	}
	
	public AddEvent() {
        super();
      }
}
