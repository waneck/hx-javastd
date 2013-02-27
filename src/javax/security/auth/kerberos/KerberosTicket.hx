package javax.security.auth.kerberos;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/**
* This class encapsulates a Kerberos ticket and associated
* information as viewed from the client's point of view. It captures all
* information that the Key Distribution Center (KDC) sends to the client
* in the reply message KDC-REP defined in the Kerberos Protocol
* Specification (<a href=http://www.ietf.org/rfc/rfc4120.txt>RFC 4120</a>).
* <p>
* All Kerberos JAAS login modules that authenticate a user to a KDC should
* use this class. Where available, the login module might even read this
* information from a ticket cache in the operating system instead of
* directly communicating with the KDC. During the commit phase of the JAAS
* authentication process, the JAAS login module should instantiate this
* class and store the instance in the private credential set of a
* {@link javax.security.auth.Subject Subject}.<p>
*
* It might be necessary for the application to be granted a
* {@link javax.security.auth.PrivateCredentialPermission
* PrivateCredentialPermission} if it needs to access a KerberosTicket
* instance from a Subject. This permission is not needed when the
* application depends on the default JGSS Kerberos mechanism to access the
* KerberosTicket. In that case, however, the application will need an
* appropriate
* {@link javax.security.auth.kerberos.ServicePermission ServicePermission}.
* <p>
* Note that this class is applicable to both ticket granting tickets and
* other regular service tickets. A ticket granting ticket is just a
* special case of a more generalized service ticket.
*
* @see javax.security.auth.Subject
* @see javax.security.auth.PrivateCredentialPermission
* @see javax.security.auth.login.LoginContext
* @see org.ietf.jgss.GSSCredential
* @see org.ietf.jgss.GSSManager
*
* @author Mayank Upadhyay
* @since 1.4
*/
@:require(java4) extern class KerberosTicket implements javax.security.auth.Destroyable implements javax.security.auth.Refreshable implements java.io.Serializable
{
	/**
	* Constructs a KerberosTicket using credentials information that a
	* client either receives from a KDC or reads from a cache.
	*
	* @param asn1Encoding the ASN.1 encoding of the ticket as defined by
	* the Kerberos protocol specification.
	* @param client the client that owns this service
	* ticket
	* @param server the service that this ticket is for
	* @param sessionKey the raw bytes for the session key that must be
	* used to encrypt the authenticator that will be sent to the server
	* @param keyType the key type for the session key as defined by the
	* Kerberos protocol specification.
	* @param flags the ticket flags. Each element in this array indicates
	* the value for the corresponding bit in the ASN.1 BitString that
	* represents the ticket flags. If the number of elements in this array
	* is less than the number of flags used by the Kerberos protocol,
	* then the missing flags will be filled in with false.
	* @param authTime the time of initial authentication for the client
	* @param startTime the time after which the ticket will be valid. This
	* may be null in which case the value of authTime is treated as the
	* startTime.
	* @param endTime the time after which the ticket will no longer be
	* valid
	* @param renewTill an absolute expiration time for the ticket,
	* including all renewal that might be possible. This field may be null
	* for tickets that are not renewable.
	* @param clientAddresses the addresses from where the ticket may be
	* used by the client. This field may be null when the ticket is usable
	* from any address.
	*/
	@:overload public function new(asn1Encoding : java.NativeArray<java.StdTypes.Int8>, client : javax.security.auth.kerberos.KerberosPrincipal, server : javax.security.auth.kerberos.KerberosPrincipal, sessionKey : java.NativeArray<java.StdTypes.Int8>, keyType : Int, flags : java.NativeArray<Bool>, authTime : java.util.Date, startTime : java.util.Date, endTime : java.util.Date, renewTill : java.util.Date, clientAddresses : java.NativeArray<java.net.InetAddress>) : Void;
	
	/**
	* Returns the client principal associated with this ticket.
	*
	* @return the client principal.
	*/
	@:overload @:final public function getClient() : javax.security.auth.kerberos.KerberosPrincipal;
	
	/**
	* Returns the service principal associated with this ticket.
	*
	* @return the service principal.
	*/
	@:overload @:final public function getServer() : javax.security.auth.kerberos.KerberosPrincipal;
	
	/**
	* Returns the session key associated with this ticket.
	*
	* @return the session key.
	*/
	@:overload @:final public function getSessionKey() : javax.crypto.SecretKey;
	
	/**
	* Returns the key type of the session key associated with this
	* ticket as defined by the Kerberos Protocol Specification.
	*
	* @return the key type of the session key associated with this
	* ticket.
	*
	* @see #getSessionKey()
	*/
	@:overload @:final public function getSessionKeyType() : Int;
	
	/**
	* Determines if this ticket is forwardable.
	*
	* @return true if this ticket is forwardable, false if not.
	*/
	@:overload @:final public function isForwardable() : Bool;
	
	/**
	* Determines if this ticket had been forwarded or was issued based on
	* authentication involving a forwarded ticket-granting ticket.
	*
	* @return true if this ticket had been forwarded or was issued based on
	* authentication involving a forwarded ticket-granting ticket,
	* false otherwise.
	*/
	@:overload @:final public function isForwarded() : Bool;
	
	/**
	* Determines if this ticket is proxiable.
	*
	* @return true if this ticket is proxiable, false if not.
	*/
	@:overload @:final public function isProxiable() : Bool;
	
	/**
	* Determines is this ticket is a proxy-ticket.
	*
	* @return true if this ticket is a proxy-ticket, false if not.
	*/
	@:overload @:final public function isProxy() : Bool;
	
	/**
	* Determines is this ticket is post-dated.
	*
	* @return true if this ticket is post-dated, false if not.
	*/
	@:overload @:final public function isPostdated() : Bool;
	
	/**
	* Determines is this ticket is renewable. If so, the {@link #refresh()
	* refresh} method can be called, assuming the validity period for
	* renewing is not already over.
	*
	* @return true if this ticket is renewable, false if not.
	*/
	@:overload @:final public function isRenewable() : Bool;
	
	/**
	* Determines if this ticket was issued using the Kerberos AS-Exchange
	* protocol, and not issued based on some ticket-granting ticket.
	*
	* @return true if this ticket was issued using the Kerberos AS-Exchange
	* protocol, false if not.
	*/
	@:overload @:final public function isInitial() : Bool;
	
	/**
	* Returns the flags associated with this ticket. Each element in the
	* returned array indicates the value for the corresponding bit in the
	* ASN.1 BitString that represents the ticket flags.
	*
	* @return the flags associated with this ticket.
	*/
	@:overload @:final public function getFlags() : java.NativeArray<Bool>;
	
	/**
	* Returns the time that the client was authenticated.
	*
	* @return the time that the client was authenticated
	*         or null if not set.
	*/
	@:overload @:final public function getAuthTime() : java.util.Date;
	
	/**
	* Returns the start time for this ticket's validity period.
	*
	* @return the start time for this ticket's validity period
	*         or null if not set.
	*/
	@:overload @:final public function getStartTime() : java.util.Date;
	
	/**
	* Returns the expiration time for this ticket's validity period.
	*
	* @return the expiration time for this ticket's validity period.
	*/
	@:overload @:final public function getEndTime() : java.util.Date;
	
	/**
	* Returns the latest expiration time for this ticket, including all
	* renewals. This will return a null value for non-renewable tickets.
	*
	* @return the latest expiration time for this ticket.
	*/
	@:overload @:final public function getRenewTill() : java.util.Date;
	
	/**
	* Returns a list of addresses from where the ticket can be used.
	*
	* @return ths list of addresses or null, if the field was not
	* provided.
	*/
	@:overload @:final public function getClientAddresses() : java.NativeArray<java.net.InetAddress>;
	
	/**
	* Returns an ASN.1 encoding of the entire ticket.
	*
	* @return an ASN.1 encoding of the entire ticket.
	*/
	@:overload @:final public function getEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	/** Determines if this ticket is still current.  */
	@:overload public function isCurrent() : Bool;
	
	/**
	* Extends the validity period of this ticket. The ticket will contain
	* a new session key if the refresh operation succeeds. The refresh
	* operation will fail if the ticket is not renewable or the latest
	* allowable renew time has passed. Any other error returned by the
	* KDC will also cause this method to fail.
	*
	* Note: This method is not synchronized with the the accessor
	* methods of this object. Hence callers need to be aware of multiple
	* threads that might access this and try to renew it at the same
	* time.
	*
	* @throws RefreshFailedException if the ticket is not renewable, or
	* the latest allowable renew time has passed, or the KDC returns some
	* error.
	*
	* @see #isRenewable()
	* @see #getRenewTill()
	*/
	@:overload public function refresh() : Void;
	
	/**
	* Destroys the ticket and destroys any sensitive information stored in
	* it.
	*/
	@:overload public function destroy() : Void;
	
	/**
	* Determines if this ticket has been destroyed.
	*/
	@:overload public function isDestroyed() : Bool;
	
	@:overload public function toString() : String;
	
	/**
	* Returns a hashcode for this KerberosTicket.
	*
	* @return a hashCode() for the <code>KerberosTicket</code>
	* @since 1.6
	*/
	@:require(java6) @:overload public function hashCode() : Int;
	
	/**
	* Compares the specified Object with this KerberosTicket for equality.
	* Returns true if the given object is also a
	* <code>KerberosTicket</code> and the two
	* <code>KerberosTicket</code> instances are equivalent.
	*
	* @param other the Object to compare to
	* @return true if the specified object is equal to this KerberosTicket,
	* false otherwise. NOTE: Returns false if either of the KerberosTicket
	* objects has been destroyed.
	* @since 1.6
	*/
	@:require(java6) @:overload public function equals(other : Dynamic) : Bool;
	
	
}
