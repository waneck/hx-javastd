package javax.security.sasl;
/*
* Copyright (c) 1999, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class Sasl
{
	/**
	* The name of a property that specifies the quality-of-protection to use.
	* The property contains a comma-separated, ordered list
	* of quality-of-protection values that the
	* client or server is willing to support.  A qop value is one of
	* <ul>
	* <li><tt>"auth"</tt> - authentication only</li>
	* <li><tt>"auth-int"</tt> - authentication plus integrity protection</li>
	* <li><tt>"auth-conf"</tt> - authentication plus integrity and confidentiality
	* protection</li>
	* </ul>
	*
	* The order of the list specifies the preference order of the client or
	* server. If this property is absent, the default qop is <tt>"auth"</tt>.
	* The value of this constant is <tt>"javax.security.sasl.qop"</tt>.
	*/
	@:public @:static @:final public static var QOP(default, null) : String;
	
	/**
	* The name of a property that specifies the cipher strength to use.
	* The property contains a comma-separated, ordered list
	* of cipher strength values that
	* the client or server is willing to support. A strength value is one of
	* <ul>
	* <li><tt>"low"</tt></li>
	* <li><tt>"medium"</tt></li>
	* <li><tt>"high"</tt></li>
	* </ul>
	* The order of the list specifies the preference order of the client or
	* server.  An implementation should allow configuration of the meaning
	* of these values.  An application may use the Java Cryptography
	* Extension (JCE) with JCE-aware mechanisms to control the selection of
	* cipher suites that match the strength values.
	* <BR>
	* If this property is absent, the default strength is
	* <tt>"high,medium,low"</tt>.
	* The value of this constant is <tt>"javax.security.sasl.strength"</tt>.
	*/
	@:public @:static @:final public static var STRENGTH(default, null) : String;
	
	/**
	* The name of a property that specifies whether the
	* server must authenticate to the client. The property contains
	* <tt>"true"</tt> if the server must
	* authenticate the to client; <tt>"false"</tt> otherwise.
	* The default is <tt>"false"</tt>.
	* <br>The value of this constant is
	* <tt>"javax.security.sasl.server.authentication"</tt>.
	*/
	@:public @:static @:final public static var SERVER_AUTH(default, null) : String;
	
	/**
	* The name of a property that specifies the maximum size of the receive
	* buffer in bytes of <tt>SaslClient</tt>/<tt>SaslServer</tt>.
	* The property contains the string representation of an integer.
	* <br>If this property is absent, the default size
	* is defined by the mechanism.
	* <br>The value of this constant is <tt>"javax.security.sasl.maxbuffer"</tt>.
	*/
	@:public @:static @:final public static var MAX_BUFFER(default, null) : String;
	
	/**
	* The name of a property that specifies the maximum size of the raw send
	* buffer in bytes of <tt>SaslClient</tt>/<tt>SaslServer</tt>.
	* The property contains the string representation of an integer.
	* The value of this property is negotiated between the client and server
	* during the authentication exchange.
	* <br>The value of this constant is <tt>"javax.security.sasl.rawsendsize"</tt>.
	*/
	@:public @:static @:final public static var RAW_SEND_SIZE(default, null) : String;
	
	/**
	* The name of a property that specifies whether to reuse previously
	* authenticated session information. The property contains "true" if the
	* mechanism implementation may attempt to reuse previously authenticated
	* session information; it contains "false" if the implementation must
	* not reuse previously authenticated session information.  A setting of
	* "true" serves only as a hint: it does not necessarily entail actual
	* reuse because reuse might not be possible due to a number of reasons,
	* including, but not limited to, lack of mechanism support for reuse,
	* expiration of reusable information, and the peer's refusal to support
	* reuse.
	*
	* The property's default value is "false".  The value of this constant
	* is "javax.security.sasl.reuse".
	*
	* Note that all other parameters and properties required to create a
	* SASL client/server instance must be provided regardless of whether
	* this property has been supplied. That is, you cannot supply any less
	* information in anticipation of reuse.
	*
	* Mechanism implementations that support reuse might allow customization
	* of its implementation, for factors such as cache size, timeouts, and
	* criteria for reuseability. Such customizations are
	* implementation-dependent.
	*/
	@:public @:static @:final public static var REUSE(default, null) : String;
	
	/**
	* The name of a property that specifies
	* whether mechanisms susceptible to simple plain passive attacks (e.g.,
	* "PLAIN") are not permitted. The property
	* contains <tt>"true"</tt> if such mechanisms are not permitted;
	* <tt>"false"</tt> if such mechanisms are permitted.
	* The default is <tt>"false"</tt>.
	* <br>The value of this constant is
	* <tt>"javax.security.sasl.policy.noplaintext"</tt>.
	*/
	@:public @:static @:final public static var POLICY_NOPLAINTEXT(default, null) : String;
	
	/**
	* The name of a property that specifies whether
	* mechanisms susceptible to active (non-dictionary) attacks
	* are not permitted.
	* The property contains <tt>"true"</tt>
	* if mechanisms susceptible to active attacks
	* are not permitted; <tt>"false"</tt> if such mechanisms are permitted.
	* The default is <tt>"false"</tt>.
	* <br>The value of this constant is
	* <tt>"javax.security.sasl.policy.noactive"</tt>.
	*/
	@:public @:static @:final public static var POLICY_NOACTIVE(default, null) : String;
	
	/**
	* The name of a property that specifies whether
	* mechanisms susceptible to passive dictionary attacks are not permitted.
	* The property contains <tt>"true"</tt>
	* if mechanisms susceptible to dictionary attacks are not permitted;
	* <tt>"false"</tt> if such mechanisms are permitted.
	* The default is <tt>"false"</tt>.
	*<br>
	* The value of this constant is
	* <tt>"javax.security.sasl.policy.nodictionary"</tt>.
	*/
	@:public @:static @:final public static var POLICY_NODICTIONARY(default, null) : String;
	
	/**
	* The name of a property that specifies whether mechanisms that accept
	* anonymous login are not permitted. The property contains <tt>"true"</tt>
	* if mechanisms that accept anonymous login are not permitted;
	* <tt>"false"</tt>
	* if such mechanisms are permitted. The default is <tt>"false"</tt>.
	*<br>
	* The value of this constant is
	* <tt>"javax.security.sasl.policy.noanonymous"</tt>.
	*/
	@:public @:static @:final public static var POLICY_NOANONYMOUS(default, null) : String;
	
	/**
	* The name of a property that specifies whether mechanisms that implement
	* forward secrecy between sessions are required. Forward secrecy
	* means that breaking into one session will not automatically
	* provide information for breaking into future sessions.
	* The property
	* contains <tt>"true"</tt> if mechanisms that implement forward secrecy
	* between sessions are required; <tt>"false"</tt> if such mechanisms
	* are not required. The default is <tt>"false"</tt>.
	*<br>
	* The value of this constant is
	* <tt>"javax.security.sasl.policy.forward"</tt>.
	*/
	@:public @:static @:final public static var POLICY_FORWARD_SECRECY(default, null) : String;
	
	/**
	* The name of a property that specifies whether
	* mechanisms that pass client credentials are required. The property
	* contains <tt>"true"</tt> if mechanisms that pass
	* client credentials are required; <tt>"false"</tt>
	* if such mechanisms are not required. The default is <tt>"false"</tt>.
	*<br>
	* The value of this constant is
	* <tt>"javax.security.sasl.policy.credentials"</tt>.
	*/
	@:public @:static @:final public static var POLICY_PASS_CREDENTIALS(default, null) : String;
	
	/**
	* The name of a property that specifies the credentials to use.
	* The property contains a mechanism-specific Java credential object.
	* Mechanism implementations may examine the value of this property
	* to determine whether it is a class that they support.
	* The property may be used to supply credentials to a mechanism that
	* supports delegated authentication.
	*<br>
	* The value of this constant is
	* <tt>"javax.security.sasl.credentials"</tt>.
	*/
	@:public @:static @:final public static var CREDENTIALS(default, null) : String;
	
	/**
	* Creates a <tt>SaslClient</tt> using the parameters supplied.
	*
	* This method uses the
<a href="{@docRoot}/../technotes/guides/security/crypto/CryptoSpec.html#Provider">JCA Security Provider Framework</a>, described in the
	* "Java Cryptography Architecture API Specification & Reference", for
	* locating and selecting a <tt>SaslClient</tt> implementation.
	*
	* First, it
	* obtains an ordered list of <tt>SaslClientFactory</tt> instances from
	* the registered security providers for the "SaslClientFactory" service
	* and the specified SASL mechanism(s). It then invokes
	* <tt>createSaslClient()</tt> on each factory instance on the list
	* until one produces a non-null <tt>SaslClient</tt> instance. It returns
	* the non-null <tt>SaslClient</tt> instance, or null if the search fails
	* to produce a non-null <tt>SaslClient</tt> instance.
	*<p>
	* A security provider for SaslClientFactory registers with the
	* JCA Security Provider Framework keys of the form <br>
	* <tt>SaslClientFactory.<em>mechanism_name</em></tt>
	* <br>
	* and values that are class names of implementations of
	* <tt>javax.security.sasl.SaslClientFactory</tt>.
	*
	* For example, a provider that contains a factory class,
	* <tt>com.wiz.sasl.digest.ClientFactory</tt>, that supports the
	* "DIGEST-MD5" mechanism would register the following entry with the JCA:
	* <tt>SaslClientFactory.DIGEST-MD5 com.wiz.sasl.digest.ClientFactory</tt>
	*<p>
	* See the
	* "Java Cryptography Architecture API Specification & Reference"
	* for information about how to install and configure security service
	*  providers.
	*
	* @param mechanisms The non-null list of mechanism names to try. Each is the
	* IANA-registered name of a SASL mechanism. (e.g. "GSSAPI", "CRAM-MD5").
	* @param authorizationId The possibly null protocol-dependent
	* identification to be used for authorization.
	* If null or empty, the server derives an authorization
	* ID from the client's authentication credentials.
	* When the SASL authentication completes successfully,
	* the specified entity is granted access.
	*
	* @param protocol The non-null string name of the protocol for which
	* the authentication is being performed (e.g., "ldap").
	*
	* @param serverName The non-null fully-qualified host name of the server
	* to authenticate to.
	*
	* @param props The possibly null set of properties used to
	* select the SASL mechanism and to configure the authentication
	* exchange of the selected mechanism.
	* For example, if <tt>props</tt> contains the
	* <code>Sasl.POLICY_NOPLAINTEXT</code> property with the value
	* <tt>"true"</tt>, then the selected
	* SASL mechanism must not be susceptible to simple plain passive attacks.
	* In addition to the standard properties declared in this class,
	* other, possibly mechanism-specific, properties can be included.
	* Properties not relevant to the selected mechanism are ignored,
	* including any map entries with non-String keys.
	*
	* @param cbh The possibly null callback handler to used by the SASL
	* mechanisms to get further information from the application/library
	* to complete the authentication. For example, a SASL mechanism might
	* require the authentication ID, password and realm from the caller.
	* The authentication ID is requested by using a <tt>NameCallback</tt>.
	* The password is requested by using a <tt>PasswordCallback</tt>.
	* The realm is requested by using a <tt>RealmChoiceCallback</tt> if there is a list
	* of realms to choose from, and by using a <tt>RealmCallback</tt> if
	* the realm must be entered.
	*
	*@return A possibly null <tt>SaslClient</tt> created using the parameters
	* supplied. If null, cannot find a <tt>SaslClientFactory</tt>
	* that will produce one.
	*@exception SaslException If cannot create a <tt>SaslClient</tt> because
	* of an error.
	*/
	@:overload @:public @:static public static function createSaslClient(mechanisms : java.NativeArray<String>, authorizationId : String, protocol : String, serverName : String, props : java.util.Map<String, Dynamic>, cbh : javax.security.auth.callback.CallbackHandler) : javax.security.sasl.SaslClient;
	
	/**
	* Creates a <tt>SaslServer</tt> for the specified mechanism.
	*
	* This method uses the
<a href="{@docRoot}/../technotes/guides/security/crypto/CryptoSpec.html#Provider">JCA Security Provider Framework</a>,
	* described in the
	* "Java Cryptography Architecture API Specification & Reference", for
	* locating and selecting a <tt>SaslServer</tt> implementation.
	*
	* First, it
	* obtains an ordered list of <tt>SaslServerFactory</tt> instances from
	* the registered security providers for the "SaslServerFactory" service
	* and the specified mechanism. It then invokes
	* <tt>createSaslServer()</tt> on each factory instance on the list
	* until one produces a non-null <tt>SaslServer</tt> instance. It returns
	* the non-null <tt>SaslServer</tt> instance, or null if the search fails
	* to produce a non-null <tt>SaslServer</tt> instance.
	*<p>
	* A security provider for SaslServerFactory registers with the
	* JCA Security Provider Framework keys of the form <br>
	* <tt>SaslServerFactory.<em>mechanism_name</em></tt>
	* <br>
	* and values that are class names of implementations of
	* <tt>javax.security.sasl.SaslServerFactory</tt>.
	*
	* For example, a provider that contains a factory class,
	* <tt>com.wiz.sasl.digest.ServerFactory</tt>, that supports the
	* "DIGEST-MD5" mechanism would register the following entry with the JCA:
	* <tt>SaslServerFactory.DIGEST-MD5  com.wiz.sasl.digest.ServerFactory</tt>
	*<p>
	* See the
	* "Java Cryptography Architecture API Specification & Reference"
	* for information about how to install and configure security
	* service providers.
	*
	* @param mechanism The non-null mechanism name. It must be an
	* IANA-registered name of a SASL mechanism. (e.g. "GSSAPI", "CRAM-MD5").
	* @param protocol The non-null string name of the protocol for which
	* the authentication is being performed (e.g., "ldap").
	* @param serverName The non-null fully qualified host name of the server.
	* @param props The possibly null set of properties used to
	* select the SASL mechanism and to configure the authentication
	* exchange of the selected mechanism.
	* For example, if <tt>props</tt> contains the
	* <code>Sasl.POLICY_NOPLAINTEXT</code> property with the value
	* <tt>"true"</tt>, then the selected
	* SASL mechanism must not be susceptible to simple plain passive attacks.
	* In addition to the standard properties declared in this class,
	* other, possibly mechanism-specific, properties can be included.
	* Properties not relevant to the selected mechanism are ignored,
	* including any map entries with non-String keys.
	*
	* @param cbh The possibly null callback handler to used by the SASL
	* mechanisms to get further information from the application/library
	* to complete the authentication. For example, a SASL mechanism might
	* require the authentication ID, password and realm from the caller.
	* The authentication ID is requested by using a <tt>NameCallback</tt>.
	* The password is requested by using a <tt>PasswordCallback</tt>.
	* The realm is requested by using a <tt>RealmChoiceCallback</tt> if there is a list
	* of realms to choose from, and by using a <tt>RealmCallback</tt> if
	* the realm must be entered.
	*
	*@return A possibly null <tt>SaslServer</tt> created using the parameters
	* supplied. If null, cannot find a <tt>SaslServerFactory</tt>
	* that will produce one.
	*@exception SaslException If cannot create a <tt>SaslServer</tt> because
	* of an error.
	**/
	@:overload @:public @:static public static function createSaslServer(mechanism : String, protocol : String, serverName : String, props : java.util.Map<String, Dynamic>, cbh : javax.security.auth.callback.CallbackHandler) : javax.security.sasl.SaslServer;
	
	/**
	* Gets an enumeration of known factories for producing <tt>SaslClient</tt>.
	* This method uses the same algorithm for locating factories as
	* <tt>createSaslClient()</tt>.
	* @return A non-null enumeration of known factories for producing
	* <tt>SaslClient</tt>.
	* @see #createSaslClient
	*/
	@:overload @:public @:static public static function getSaslClientFactories() : java.util.Enumeration<javax.security.sasl.SaslClientFactory>;
	
	/**
	* Gets an enumeration of known factories for producing <tt>SaslServer</tt>.
	* This method uses the same algorithm for locating factories as
	* <tt>createSaslServer()</tt>.
	* @return A non-null enumeration of known factories for producing
	* <tt>SaslServer</tt>.
	* @see #createSaslServer
	*/
	@:overload @:public @:static public static function getSaslServerFactories() : java.util.Enumeration<javax.security.sasl.SaslServerFactory>;
	
	
}
