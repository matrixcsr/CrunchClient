
package com.humber.interfaces;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com.humber.interfaces package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _CreateBooking_QNAME = new QName("http://interfaces.humber.com/", "createBooking");
    private final static QName _CreateBookingResponse_QNAME = new QName("http://interfaces.humber.com/", "createBookingResponse");
    private final static QName _DeleteBooking_QNAME = new QName("http://interfaces.humber.com/", "deleteBooking");
    private final static QName _DeleteBookingResponse_QNAME = new QName("http://interfaces.humber.com/", "deleteBookingResponse");
    private final static QName _GetUserBookings_QNAME = new QName("http://interfaces.humber.com/", "getUserBookings");
    private final static QName _GetUserBookingsResponse_QNAME = new QName("http://interfaces.humber.com/", "getUserBookingsResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.humber.interfaces
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link CreateBooking }
     * 
     */
    public CreateBooking createCreateBooking() {
        return new CreateBooking();
    }

    /**
     * Create an instance of {@link CreateBookingResponse }
     * 
     */
    public CreateBookingResponse createCreateBookingResponse() {
        return new CreateBookingResponse();
    }

    /**
     * Create an instance of {@link DeleteBooking }
     * 
     */
    public DeleteBooking createDeleteBooking() {
        return new DeleteBooking();
    }

    /**
     * Create an instance of {@link DeleteBookingResponse }
     * 
     */
    public DeleteBookingResponse createDeleteBookingResponse() {
        return new DeleteBookingResponse();
    }

    /**
     * Create an instance of {@link GetUserBookings }
     * 
     */
    public GetUserBookings createGetUserBookings() {
        return new GetUserBookings();
    }

    /**
     * Create an instance of {@link GetUserBookingsResponse }
     * 
     */
    public GetUserBookingsResponse createGetUserBookingsResponse() {
        return new GetUserBookingsResponse();
    }

    /**
     * Create an instance of {@link BookingClass }
     * 
     */
    public BookingClass createBookingClass() {
        return new BookingClass();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CreateBooking }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link CreateBooking }{@code >}
     */
    @XmlElementDecl(namespace = "http://interfaces.humber.com/", name = "createBooking")
    public JAXBElement<CreateBooking> createCreateBooking(CreateBooking value) {
        return new JAXBElement<CreateBooking>(_CreateBooking_QNAME, CreateBooking.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CreateBookingResponse }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link CreateBookingResponse }{@code >}
     */
    @XmlElementDecl(namespace = "http://interfaces.humber.com/", name = "createBookingResponse")
    public JAXBElement<CreateBookingResponse> createCreateBookingResponse(CreateBookingResponse value) {
        return new JAXBElement<CreateBookingResponse>(_CreateBookingResponse_QNAME, CreateBookingResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link DeleteBooking }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link DeleteBooking }{@code >}
     */
    @XmlElementDecl(namespace = "http://interfaces.humber.com/", name = "deleteBooking")
    public JAXBElement<DeleteBooking> createDeleteBooking(DeleteBooking value) {
        return new JAXBElement<DeleteBooking>(_DeleteBooking_QNAME, DeleteBooking.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link DeleteBookingResponse }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link DeleteBookingResponse }{@code >}
     */
    @XmlElementDecl(namespace = "http://interfaces.humber.com/", name = "deleteBookingResponse")
    public JAXBElement<DeleteBookingResponse> createDeleteBookingResponse(DeleteBookingResponse value) {
        return new JAXBElement<DeleteBookingResponse>(_DeleteBookingResponse_QNAME, DeleteBookingResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetUserBookings }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link GetUserBookings }{@code >}
     */
    @XmlElementDecl(namespace = "http://interfaces.humber.com/", name = "getUserBookings")
    public JAXBElement<GetUserBookings> createGetUserBookings(GetUserBookings value) {
        return new JAXBElement<GetUserBookings>(_GetUserBookings_QNAME, GetUserBookings.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetUserBookingsResponse }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link GetUserBookingsResponse }{@code >}
     */
    @XmlElementDecl(namespace = "http://interfaces.humber.com/", name = "getUserBookingsResponse")
    public JAXBElement<GetUserBookingsResponse> createGetUserBookingsResponse(GetUserBookingsResponse value) {
        return new JAXBElement<GetUserBookingsResponse>(_GetUserBookingsResponse_QNAME, GetUserBookingsResponse.class, null, value);
    }

}
