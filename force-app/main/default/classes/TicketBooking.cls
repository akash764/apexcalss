public class TicketBooking {
    static integer ticketsBooked =0;
    public static integer bookTicket (integer count) {
        ticketsBooked = ticketsBooked + count;
        return ticketsBooked;
    }

}
//system.debug(TicketBooking.bookTicket(2));
//system.debug(TicketBooking.bookTicket(3));