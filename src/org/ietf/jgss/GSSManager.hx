package org.ietf.jgss;
/*
* Copyright (c) 2000, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class GSSManager
{
	/**
	* Returns the default GSSManager implementation.
	*
	* @return a GSSManager implementation
	*/
	@:overload @:public @:static public static function getInstance() : org.ietf.jgss.GSSManager;
	
	/**
	* Returns a list of mechanisms that are available to GSS-API callers
	* through this GSSManager. The default GSSManager obtained from the
	* {@link #getInstance() getInstance()} method includes the Oid
	* "1.2.840.113554.1.2.2" in its list. This Oid identifies the Kerberos
	* v5 GSS-API mechanism that is defined in RFC 1964.
	*
	* @return an array of Oid objects corresponding to the mechanisms that
	* are available. A <code>null</code> value is returned when no
	* mechanism are available (an example of this would be when mechanism
	* are dynamically configured, and currently no mechanisms are
	* installed).
	*/
	@:overload @:public @:abstract public function getMechs() : java.NativeArray<org.ietf.jgss.Oid>;
	
	/**
	* Returns then name types supported by the indicated mechanism.<p>
	*
	* The default GSSManager instance includes support for the Kerberos v5
	* mechanism. When this mechanism ("1.2.840.113554.1.2.2") is indicated,
	* the returned list will contain at least the following nametypes:
	* {@link GSSName#NT_HOSTBASED_SERVICE GSSName.NT_HOSTBASED_SERVICE},
	* {@link GSSName#NT_EXPORT_NAME GSSName.NT_EXPORT_NAME}, and the
	* Kerberos v5 specific Oid "1.2.840.113554.1.2.2.1". The namespace for
	* the Oid "1.2.840.113554.1.2.2.1" is defined in RFC 1964.
	*
	* @return an array of Oid objects corresponding to the name types that
	* the mechanism supports.
	* @param mech the Oid of the mechanism to query
	*
	* @see #getMechsForName(Oid)
	*
	* @throws GSSException containing the following
	* major error codes:
	*    {@link GSSException#BAD_MECH GSSException.BAD_MECH}
	*    {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload @:public @:abstract public function getNamesForMech(mech : org.ietf.jgss.Oid) : java.NativeArray<org.ietf.jgss.Oid>;
	
	/**
	* Returns a list of mechanisms that support the indicated name type.<p>
	*
	* The Kerberos v5 mechanism ("1.2.840.113554.1.2.2") will always be
	* returned in this list when the indicated nametype is one of
	* {@link GSSName#NT_HOSTBASED_SERVICE GSSName.NT_HOSTBASED_SERVICE},
	* {@link GSSName#NT_EXPORT_NAME GSSName.NT_EXPORT_NAME}, or
	* "1.2.840.113554.1.2.2.1".
	*
	* @return an array of Oid objects corresponding to the mechanisms that
	* support the specified name type.  <code>null</code> is returned when no
	* mechanisms are found to support the specified name type.
	* @param nameType the Oid of the name type to look for
	*
	* @see #getNamesForMech(Oid)
	*/
	@:overload @:public @:abstract public function getMechsForName(nameType : org.ietf.jgss.Oid) : java.NativeArray<org.ietf.jgss.Oid>;
	
	/**
	* Factory method to convert a string name from the
	* specified namespace to a GSSName object. In general, the
	* <code>GSSName</code> object created  will contain multiple
	* representations of the name, one for each mechanism that is
	* supported; two examples that are exceptions to this are when
	* the namespace type parameter indicates NT_EXPORT_NAME or when the
	* GSS-API implementation is not multi-mechanism. It is
	* not recommended to use this method with a NT_EXPORT_NAME type because
	* representing a previously exported name consisting of abitrary bytes
	* as a String might cause problems with character encoding schemes. In
	* such cases it is recommended that the bytes be passed in directly to
	* the overloaded form of this method {@link #createName(byte[],
	* Oid) createName}.
	*
	* @param nameStr the string representing a printable form of the name to
	* create.
	* @param nameType the Oid specifying the namespace of the printable name
	* supplied. <code>null</code> can be used to specify
	* that a mechanism specific default printable syntax should
	* be assumed by each mechanism that examines nameStr.
	* It is not advisable to use the nametype NT_EXPORT_NAME with this
	* method.
	* @return a GSSName representing the indicated principal
	*
	* @see GSSName
	* @see GSSName#NT_EXPORT_NAME
	*
	* @throws GSSException containing the following
	* major error codes:
	*    {@link GSSException#BAD_NAMETYPE GSSException.BAD_NAMETYPE},
	*    {@link GSSException#BAD_NAME GSSException.BAD_NAME},
	*    {@link GSSException#BAD_MECH GSSException.BAD_MECH},
	*    {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload @:public @:abstract public function createName(nameStr : String, nameType : org.ietf.jgss.Oid) : org.ietf.jgss.GSSName;
	
	/**
	* Factory method to convert a byte array containing a
	* name from the specified namespace to a GSSName object. In general,
	* the <code>GSSName</code> object created  will contain multiple
	* representations of the name, one for each mechanism that is
	* supported; two examples that are exceptions to this are when the
	* namespace type parameter indicates NT_EXPORT_NAME or when the
	* GSS-API implementation is not multi-mechanism. The bytes that are
	* passed in are interpreted by each underlying mechanism according to
	* some encoding scheme of its choice for the given nametype.
	*
	* @param name the byte array containing the name to create
	* @param nameType the Oid specifying the namespace of the name supplied
	* in the byte array. <code>null</code> can be used to specify that a
	* mechanism specific default syntax should be assumed by each mechanism
	* that examines the byte array.
	* @return a GSSName representing the indicated principal
	*
	* @see GSSName
	* @see GSSName#NT_EXPORT_NAME
	*
	* @throws GSSException containing the following
	* major error codes:
	*    {@link GSSException#BAD_NAMETYPE GSSException.BAD_NAMETYPE},
	*    {@link GSSException#BAD_NAME GSSException.BAD_NAME},
	*    {@link GSSException#BAD_MECH GSSException.BAD_MECH},
	*    {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload @:public @:abstract public function createName(name : java.NativeArray<java.StdTypes.Int8>, nameType : org.ietf.jgss.Oid) : org.ietf.jgss.GSSName;
	
	/**
	*  Factory method to convert a string name from the
	* specified namespace to a GSSName object and canonicalize it at the
	* same time for a mechanism. In other words, this method is
	* a utility that does the equivalent of two steps: the {@link
	* #createName(String, Oid) createName} and then also the {@link
	* GSSName#canonicalize(Oid) GSSName.canonicalize}.
	*
	* @param nameStr the string representing a printable form of the name to
	* create.
	* @param nameType the Oid specifying the namespace of the printable name
	* supplied. <code>null</code> can be used to specify
	* that a mechanism specific default printable syntax should
	* be assumed by each mechanism that examines nameStr.
	* It is not advisable to use the nametype NT_EXPORT_NAME with this
	* method.
	* @param mech Oid specifying the mechanism for which the name should be
	* canonicalized
	* @return a GSSName representing the indicated principal
	*
	* @see GSSName#canonicalize(Oid)
	* @see GSSName#NT_EXPORT_NAME
	*
	* @throws GSSException containing the following
	* major error codes:
	*    {@link GSSException#BAD_NAMETYPE GSSException.BAD_NAMETYPE},
	*    {@link GSSException#BAD_NAME GSSException.BAD_NAME},
	*    {@link GSSException#BAD_MECH GSSException.BAD_MECH},
	*    {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload @:public @:abstract public function createName(nameStr : String, nameType : org.ietf.jgss.Oid, mech : org.ietf.jgss.Oid) : org.ietf.jgss.GSSName;
	
	/**
	*  Factory method to convert a byte array containing a
	* name from the specified namespace to a GSSName object and canonicalize
	* it at the same time for a mechanism. In other words, this method is a
	* utility that does the equivalent of two steps: the {@link
	* #createName(byte[], Oid) createName} and then also {@link
	* GSSName#canonicalize(Oid) GSSName.canonicalize}.
	*
	* @param name the byte array containing the name to create
	* @param nameType the Oid specifying the namespace of the name supplied
	* in the byte array. <code>null</code> can be used to specify that a
	* mechanism specific default syntax should be assumed by each mechanism
	* that examines the byte array.
	* @param mech Oid specifying the mechanism for which the name should be
	* canonicalized
	* @return a GSSName representing the indicated principal
	*
	* @see GSSName#canonicalize(Oid)
	* @see GSSName#NT_EXPORT_NAME
	*
	* @throws GSSException containing the following
	* major error codes:
	*    {@link GSSException#BAD_NAMETYPE GSSException.BAD_NAMETYPE},
	*    {@link GSSException#BAD_NAME GSSException.BAD_NAME},
	*    {@link GSSException#BAD_MECH GSSException.BAD_MECH},
	*    {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload @:public @:abstract public function createName(name : java.NativeArray<java.StdTypes.Int8>, nameType : org.ietf.jgss.Oid, mech : org.ietf.jgss.Oid) : org.ietf.jgss.GSSName;
	
	/**
	* Factory method for acquiring default credentials.  This will cause
	* the GSS-API to use system specific defaults for the set of mechanisms,
	* name, and lifetime.<p>
	*
	* GSS-API mechanism providers must impose a local access-control
	* policy on callers to prevent unauthorized callers from acquiring
	* credentials to which they are not entitled. The kinds of permissions
	* needed by different mechanism providers will be documented on a
	* per-mechanism basis. A failed permission check might cause a {@link
	* java.lang.SecurityException SecurityException} to be thrown from
	* this method.
	*
	* @param usage The intended usage for this credential object. The value
	* of this parameter must be one of:
	* {@link GSSCredential#INITIATE_AND_ACCEPT
	* GSSCredential.INITIATE_AND_ACCEPT},
	* {@link GSSCredential#ACCEPT_ONLY GSSCredential.ACCEPT_ONLY}, and
	* {@link GSSCredential#INITIATE_ONLY GSSCredential.INITIATE_ONLY}.
	* @return a GSSCredential of the requested type.
	*
	* @see GSSCredential
	*
	* @throws GSSException containing the following
	* major error codes:
	*    {@link GSSException#BAD_MECH GSSException.BAD_MECH},
	*    {@link GSSException#BAD_NAMETYPE GSSException.BAD_NAMETYPE},
	*    {@link GSSException#BAD_NAME GSSException.BAD_NAME},
	*    {@link GSSException#CREDENTIALS_EXPIRED
	*                                   GSSException.CREDENTIALS_EXPIRED},
	*    {@link GSSException#NO_CRED GSSException.NO_CRED},
	*    {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload @:public @:abstract public function createCredential(usage : Int) : org.ietf.jgss.GSSCredential;
	
	/**
	* Factory method for acquiring a single mechanism credential.<p>
	*
	* GSS-API mechanism providers must impose a local access-control
	* policy on callers to prevent unauthorized callers from acquiring
	* credentials to which they are not entitled. The kinds of permissions
	* needed by different mechanism providers will be documented on a
	* per-mechanism basis. A failed permission check might cause a {@link
	* java.lang.SecurityException SecurityException} to be thrown from
	* this method. <p>
	*
	* Non-default values for lifetime cannot always be honored by the
	* underlying mechanisms, thus applications should be prepared to call
	* {@link GSSCredential#getRemainingLifetime() getRemainingLifetime}
	* on the returned credential.<p>
	*
	* @param name the name of the principal for whom this credential is to be
	* acquired.  Use <code>null</code> to specify the default principal.
	* @param lifetime The number of seconds that credentials should remain
	* valid.  Use {@link GSSCredential#INDEFINITE_LIFETIME
	* GSSCredential.INDEFINITE_LIFETIME} to request that the credentials
	* have the maximum permitted lifetime.  Use {@link
	* GSSCredential#DEFAULT_LIFETIME GSSCredential.DEFAULT_LIFETIME} to
	* request default credential lifetime.
	* @param mech the Oid of the desired mechanism.  Use <code>(Oid) null
	* </code> to request the default mechanism.
	* @param usage The intended usage for this credential object. The value
	* of this parameter must be one of:
	* {@link GSSCredential#INITIATE_AND_ACCEPT
	* GSSCredential.INITIATE_AND_ACCEPT},
	* {@link GSSCredential#ACCEPT_ONLY GSSCredential.ACCEPT_ONLY}, and
	* {@link GSSCredential#INITIATE_ONLY GSSCredential.INITIATE_ONLY}.
	* @return a GSSCredential of the requested type.
	*
	* @see GSSCredential
	*
	* @throws GSSException containing the following
	* major error codes:
	*    {@link GSSException#BAD_MECH GSSException.BAD_MECH},
	*    {@link GSSException#BAD_NAMETYPE GSSException.BAD_NAMETYPE},
	*    {@link GSSException#BAD_NAME GSSException.BAD_NAME},
	*    {@link GSSException#CREDENTIALS_EXPIRED
	*                                   GSSException.CREDENTIALS_EXPIRED},
	*    {@link GSSException#NO_CRED GSSException.NO_CRED},
	*    {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload @:public @:abstract public function createCredential(name : org.ietf.jgss.GSSName, lifetime : Int, mech : org.ietf.jgss.Oid, usage : Int) : org.ietf.jgss.GSSCredential;
	
	/**
	* Factory method for acquiring credentials over a set of
	* mechanisms. This method attempts to acquire credentials for
	* each of the mechanisms specified in the array called mechs.  To
	* determine the list of mechanisms for which the acquisition of
	* credentials succeeded, the caller should use the {@link
	* GSSCredential#getMechs() GSSCredential.getMechs} method.<p>
	*
	* GSS-API mechanism providers must impose a local access-control
	* policy on callers to prevent unauthorized callers from acquiring
	* credentials to which they are not entitled. The kinds of permissions
	* needed by different mechanism providers will be documented on a
	* per-mechanism basis. A failed permission check might cause a {@link
	* java.lang.SecurityException SecurityException} to be thrown from
	* this method.<p>
	*
	* Non-default values for lifetime cannot always be honored by the
	* underlying mechanisms, thus applications should be prepared to call
	* {@link GSSCredential#getRemainingLifetime() getRemainingLifetime}
	* on the returned credential.<p>
	*
	* @param name the name of the principal for whom this credential is to
	* be acquired.  Use <code>null</code> to specify the default
	* principal.
	* @param lifetime The number of seconds that credentials should remain
	* valid.  Use {@link GSSCredential#INDEFINITE_LIFETIME
	* GSSCredential.INDEFINITE_LIFETIME} to request that the credentials
	* have the maximum permitted lifetime.  Use {@link
	* GSSCredential#DEFAULT_LIFETIME GSSCredential.DEFAULT_LIFETIME} to
	* request default credential lifetime.
	* @param mechs an array of Oid's indicating the mechanisms over which
	* the credential is to be acquired.  Use <code>(Oid[]) null</code> for
	* requesting a system specific default set of mechanisms.
	* @param usage The intended usage for this credential object. The value
	* of this parameter must be one of:
	* {@link GSSCredential#INITIATE_AND_ACCEPT
	* GSSCredential.INITIATE_AND_ACCEPT},
	* {@link GSSCredential#ACCEPT_ONLY GSSCredential.ACCEPT_ONLY}, and
	* {@link GSSCredential#INITIATE_ONLY GSSCredential.INITIATE_ONLY}.
	* @return a GSSCredential of the requested type.
	*
	* @see GSSCredential
	*
	* @throws GSSException containing the following
	* major error codes:
	*    {@link GSSException#BAD_MECH GSSException.BAD_MECH},
	*    {@link GSSException#BAD_NAMETYPE GSSException.BAD_NAMETYPE},
	*    {@link GSSException#BAD_NAME GSSException.BAD_NAME},
	*    {@link GSSException#CREDENTIALS_EXPIRED
	*                                   GSSException.CREDENTIALS_EXPIRED},
	*    {@link GSSException#NO_CRED GSSException.NO_CRED},
	*    {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload @:public @:abstract public function createCredential(name : org.ietf.jgss.GSSName, lifetime : Int, mechs : java.NativeArray<org.ietf.jgss.Oid>, usage : Int) : org.ietf.jgss.GSSCredential;
	
	/**
	* Factory method for creating a context on the initiator's
	* side.
	*
	* Some mechanism providers might require that the caller be granted
	* permission to initiate a security context. A failed permission check
	* might cause a {@link java.lang.SecurityException SecurityException}
	* to be thrown from this method.<p>
	*
	* Non-default values for lifetime cannot always be honored by the
	* underlying mechanism, thus applications should be prepared to call
	* {@link GSSContext#getLifetime() getLifetime} on the returned
	* context.<p>
	*
	* @param peer the name of the target peer.
	* @param mech the Oid of the desired mechanism.  Use <code>null</code>
	* to request the default mechanism.
	* @param myCred the credentials of the initiator.  Use
	* <code>null</code> to act as the default initiator principal.
	* @param lifetime the lifetime, in seconds, requested for the
	* context. Use {@link GSSContext#INDEFINITE_LIFETIME
	* GSSContext.INDEFINITE_LIFETIME} to request that the context have the
	* maximum permitted lifetime. Use {@link GSSContext#DEFAULT_LIFETIME
	* GSSContext.DEFAULT_LIFETIME} to request a default lifetime for the
	* context.
	* @return an unestablished GSSContext
	*
	* @see GSSContext
	*
	* @throws GSSException containing the following
	* major error codes:
	*    {@link GSSException#NO_CRED GSSException.NO_CRED}
	*    {@link GSSException#CREDENTIALS_EXPIRED
	*                      GSSException.CREDENTIALS_EXPIRED}
	*    {@link GSSException#BAD_NAMETYPE GSSException.BAD_NAMETYPE}
	*    {@link GSSException#BAD_MECH GSSException.BAD_MECH}
	*    {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload @:public @:abstract public function createContext(peer : org.ietf.jgss.GSSName, mech : org.ietf.jgss.Oid, myCred : org.ietf.jgss.GSSCredential, lifetime : Int) : org.ietf.jgss.GSSContext;
	
	/**
	* Factory method for creating a context on the acceptor' side.  The
	* context's properties will be determined from the input token supplied
	* to the accept method.
	*
	* Some mechanism providers might require that the caller be granted
	* permission to accept a security context. A failed permission check
	* might cause a {@link java.lang.SecurityException SecurityException}
	* to be thrown from this method.
	*
	* @param myCred the credentials for the acceptor.  Use
	* <code>null</code> to act as a default acceptor principal.
	* @return an unestablished GSSContext
	*
	* @see GSSContext
	*
	* @throws GSSException containing the following
	* major error codes:
	*    {@link GSSException#NO_CRED GSSException.NO_CRED}
	*    {@link GSSException#CREDENTIALS_EXPIRED
	*                        GSSException.CREDENTIALS_EXPIRED}
	*    {@link GSSException#BAD_MECH GSSException.BAD_MECH}
	*    {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload @:public @:abstract public function createContext(myCred : org.ietf.jgss.GSSCredential) : org.ietf.jgss.GSSContext;
	
	/**
	* Factory method for creating a previously exported context.  The
	* context properties will be determined from the input token and
	* cannot be modified through the set methods.<p>
	*
	* Implementations are not required to support the inter-process
	* transfer of security contexts.  Before exporting a context, calling
	* the {@link GSSContext#isTransferable() GSSContext.isTransferable}
	* will indicate if the context is transferable. Calling this method in
	* an implementation that does not support it will result in a
	* <code>GSSException</code> with the error
	* code {@link GSSException#UNAVAILABLE GSSException.UNAVAILABLE}.
	*
	* Some mechanism providers might require that the caller be granted
	* permission to initiate or accept a security context. A failed
	* permission check might cause a {@link java.lang.SecurityException
	* SecurityException} to be thrown from this method.
	*
	* @param interProcessToken the token previously emitted from the
	* export method.
	* @return the previously established GSSContext
	*
	* @see GSSContext
	*
	* @throws GSSException containing the following
	* major error codes:
	*    {@link GSSException#NO_CONTEXT GSSException.NO_CONTEXT},
	*    {@link GSSException#DEFECTIVE_TOKEN GSSException.DEFECTIVE_TOKEN},
	*    {@link GSSException#UNAVAILABLE GSSException.UNAVAILABLE},
	*    {@link GSSException#UNAUTHORIZED GSSException.UNAUTHORIZED},
	*    {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload @:public @:abstract public function createContext(interProcessToken : java.NativeArray<java.StdTypes.Int8>) : org.ietf.jgss.GSSContext;
	
	/**
	* This method is used to indicate to the GSSManager that the
	* application would like a particular provider to be used ahead of all
	* others when support is desired for the given mechanism. When a value
	* of null is used instead of an <code>Oid</code> for the mechanism,
	* the GSSManager must use the indicated provider ahead of all others
	* no matter what the mechanism is. Only when the indicated provider
	* does not support the needed mechanism should the GSSManager move on
	* to a different provider.<p>
	*
	* Calling this method repeatedly preserves the older settings but
	* lowers them in preference thus forming an ordered list of provider
	* and <code>Oid</code> pairs that grows at the top.<p>
	*
	* Calling addProviderAtFront with a null <code>Oid</code> will remove
	* all previous preferences that were set for this provider in the
	* GSSManager instance. Calling addProviderAtFront with a non-null
	* <code>Oid</code> will remove any previous preference that was set
	* using this mechanism and this provider together.<p>
	*
	* If the GSSManager implementation does not support an SPI with a
	* pluggable provider architecture it should throw a GSSException with
	* the status code GSSException.UNAVAILABLE to indicate that the
	* operation is unavailable.<p>
	*
	* Suppose an application desired that the provider A always be checked
	* first when any mechanism is needed, it would call:<p>
	* <pre>
	*         GSSManager mgr = GSSManager.getInstance();
	*         // mgr may at this point have its own pre-configured list
	*         // of provider preferences. The following will prepend to
	*         // any such list:
	*
	*         mgr.addProviderAtFront(A, null);
	* </pre>
	* Now if it also desired that the mechanism of Oid m1 always be
	* obtained from the provider B before the previously set A was checked,
	* it would call:<p>
	* <pre>
	*         mgr.addProviderAtFront(B, m1);
	* </pre>
	* The GSSManager would then first check with B if m1 was needed. In
	* case B did not provide support for m1, the GSSManager would continue
	* on to check with A.  If any mechanism m2 is needed where m2 is
	* different from m1 then the GSSManager would skip B and check with A
	* directly.<p>
	*
	* Suppose at a later time the following call is made to the same
	* GSSManager instance:<p>
	* <pre>
	*         mgr.addProviderAtFront(B, null)
	* </pre>
	* then the previous setting with the pair (B, m1) is subsumed by this
	* and should be removed. Effectively the list of preferences now
	* becomes {(B, null), (A, null),
	*         ... //followed by the pre-configured list.<p>
	*
	* Please note, however, that the following call:
	* <pre>
	*         mgr.addProviderAtFront(A, m3)
	* </pre>
	* does not subsume the previous setting of (A, null) and the list will
	* effectively become {(A, m3), (B, null), (A, null), ...}
	*
	* @param p the provider instance that should be used whenever support
	* is needed for mech.
	* @param mech the mechanism for which the provider is being set
	*
	* @throws GSSException containing the following
	* major error codes:
	*    {@link GSSException#UNAVAILABLE GSSException.UNAVAILABLE},
	*    {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload @:public @:abstract public function addProviderAtFront(p : java.security.Provider, mech : org.ietf.jgss.Oid) : Void;
	
	/**
	* This method is used to indicate to the GSSManager that the
	* application would like a particular provider to be used if no other
	* provider can be found that supports the given mechanism. When a value
	* of null is used instead of an Oid for the mechanism, the GSSManager
	* must use the indicated provider for any mechanism.<p>
	*
	* Calling this method repeatedly preserves the older settings but
	* raises them above newer ones in preference thus forming an ordered
	* list of providers and Oid pairs that grows at the bottom. Thus the
	* older provider settings will be utilized first before this one is.<p>
	*
	* If there are any previously existing preferences that conflict with
	* the preference being set here, then the GSSManager should ignore this
	* request.<p>
	*
	* If the GSSManager implementation does not support an SPI with a
	* pluggable provider architecture it should throw a GSSException with
	* the status code GSSException.UNAVAILABLE to indicate that the
	* operation is unavailable.<p>
	*
	* Suppose an application desired that when a mechanism of Oid m1 is
	* needed the system default providers always be checked first, and only
	* when they do not support m1 should a provider A be checked. It would
	* then make the call:<p>
	* <pre>
	*         GSSManager mgr = GSSManager.getInstance();
	*         mgr.addProviderAtEnd(A, m1);
	* </pre>
	* Now, if it also desired that for all mechanisms the provider B be
	* checked after all configured providers have been checked, it would
	* then call:<p>
	* <pre>
	*         mgr.addProviderAtEnd(B, null);
	* </pre>
	* Effectively the list of preferences now becomes {..., (A, m1), (B,
	* null)}.<p>
	*
	* Suppose at a later time the following call is made to the same
	* GSSManager instance:<p>
	* <pre>
	*         mgr.addProviderAtEnd(B, m2)
	* </pre>
	* then the previous setting with the pair (B, null) subsumes this and
	* therefore this request should be ignored. The same would happen if a
	* request is made for the already existing pairs of (A, m1) or (B,
	* null).<p>
	*
	* Please note, however, that the following call:<p>
	* <pre>
	*         mgr.addProviderAtEnd(A, null)
	* </pre>
	* is not subsumed by the previous setting of (A, m1) and the list will
	* effectively become {..., (A, m1), (B, null), (A, null)}
	*
	* @param p the provider instance that should be used whenever support
	* is needed for mech.
	* @param mech the mechanism for which the provider is being set
	*
	* @throws GSSException containing the following
	* major error codes:
	*    {@link GSSException#UNAVAILABLE GSSException.UNAVAILABLE},
	*    {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload @:public @:abstract public function addProviderAtEnd(p : java.security.Provider, mech : org.ietf.jgss.Oid) : Void;
	
	
}
