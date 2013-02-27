package org.ietf.jgss;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
* This interface encapsulates the GSS-API credentials for an entity.  A
* credential contains all the necessary cryptographic information to
* enable the creation of a context on behalf of the entity that it
* represents.  It may contain multiple, distinct, mechanism specific
* credential elements, each containing information for a specific
* security mechanism, but all referring to the same entity. A credential
* may be used to perform context initiation, acceptance, or both.<p>
*
* Credentials are instantiated using one of the
* <code>createCredential</code> methods in the {@link GSSManager
* GSSManager} class. GSS-API credential creation is not
* intended to provide a "login to the network" function, as such a
* function would involve the creation of new credentials rather than
* merely acquiring a handle to existing credentials. The
* <a href=package-summary.html#useSubjectCredsOnly>section on credential
* acquisition</a> in the package level description describes
* how existing credentials are acquired in the Java platform. GSS-API
* implementations must impose a local access-control policy on callers to
* prevent unauthorized callers from acquiring credentials to which they
* are not entitled. <p>
*
* Applications will create a credential object passing the desired
* parameters.  The application can then use the query methods to obtain
* specific information about the instantiated credential object.
* When the credential is no longer needed, the application should call
* the {@link #dispose() dispose} method to release any resources held by
* the credential object and to destroy any cryptographically sensitive
* information.<p>
*
* This example code demonstrates the creation of a GSSCredential
* implementation for a specific entity, querying of its fields, and its
* release when it is no longer needed:<p>
* <pre>
*    GSSManager manager = GSSManager.getInstance();
*
*    // start by creating a name object for the entity
*    GSSName name = manager.createName("myusername", GSSName.NT_USER_NAME);
*
*    // now acquire credentials for the entity
*    GSSCredential cred = manager.createCredential(name,
*                    GSSCredential.ACCEPT_ONLY);
*
*    // display credential information - name, remaining lifetime,
*    // and the mechanisms it has been acquired over
*    System.out.println(cred.getName().toString());
*    System.out.println(cred.getRemainingLifetime());
*
*    Oid [] mechs = cred.getMechs();
*    if (mechs != null) {
*            for (int i = 0; i < mechs.length; i++)
*                    System.out.println(mechs[i].toString());
*    }
*
*    // release system resources held by the credential
*    cred.dispose();
* </pre>
*
* @see GSSManager#createCredential(int)
* @see GSSManager#createCredential(GSSName, int, Oid, int)
* @see GSSManager#createCredential(GSSName, int, Oid[], int)
* @see #dispose()
*
* @author Mayank Upadhyay
* @since 1.4
*/
@:require(java4) extern interface GSSCredential extends java.lang.Cloneable
{
	/**
	* Releases any sensitive information that the GSSCredential object may
	* be containing.  Applications should call this method as soon as the
	* credential is no longer needed to minimize the time any sensitive
	* information is maintained.
	*
	* @throws GSSException containing the following
	* major error codes:
	*         {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload public function dispose() : Void;
	
	/**
	*  Retrieves the name of the entity that the credential asserts.
	*
	* @return a GSSName representing the entity
	*
	* @throws GSSException containing the following
	* major error codes:
	*         {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload public function getName() : org.ietf.jgss.GSSName;
	
	/**
	* Retrieves a Mechanism Name of the entity that the credential
	* asserts. This is equivalent to calling {@link
	* GSSName#canonicalize(Oid) canonicalize} on the value returned by
	* the other form of {@link #getName() getName}.
	*
	* @param mech the Oid of the mechanism for which the Mechanism Name
	* should be returned.
	* @return a GSSName representing the entity canonicalized for the
	* desired mechanism
	*
	* @throws GSSException containing the following
	* major error codes:
	*         {@link GSSException#BAD_MECH GSSException.BAD_MECH},
	*         {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload public function getName(mech : org.ietf.jgss.Oid) : org.ietf.jgss.GSSName;
	
	/**
	* Returns the remaining lifetime in seconds for a credential.  The
	* remaining lifetime is the minimum lifetime amongst all of the underlying
	* mechanism specific credential elements.
	*
	* @return the minimum remaining lifetime in seconds for this
	* credential. A return value of {@link #INDEFINITE_LIFETIME
	* INDEFINITE_LIFETIME} indicates that the credential does
	* not expire. A return value of 0 indicates that the credential is
	* already expired.
	*
	* @see #getRemainingInitLifetime(Oid)
	* @see #getRemainingAcceptLifetime(Oid)
	*
	* @throws GSSException containing the following
	* major error codes:
	*         {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload public function getRemainingLifetime() : Int;
	
	/**
	* Returns the lifetime in seconds for the credential to remain capable
	* of initiating security contexts using the specified mechanism. This
	* method queries the initiator credential element that belongs to the
	* specified mechanism.
	*
	* @return the number of seconds remaining in the life of this credential
	* element. A return value of {@link #INDEFINITE_LIFETIME
	* INDEFINITE_LIFETIME} indicates that the credential element does not
	* expire.  A return value of 0 indicates that the credential element is
	* already expired.
	*
	* @param mech the Oid of the mechanism whose intiator credential element
	* should be queried.
	*
	* @throws GSSException containing the following
	* major error codes:
	*         {@link GSSException#BAD_MECH GSSException.BAD_MECH},
	*         {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload public function getRemainingInitLifetime(mech : org.ietf.jgss.Oid) : Int;
	
	/**
	* Returns the lifetime in seconds for the credential to remain capable
	* of accepting security contexts using the specified mechanism. This
	* method queries the acceptor credential element that belongs to the
	* specified mechanism.
	*
	* @return the number of seconds remaining in the life of this credential
	* element. A return value of {@link #INDEFINITE_LIFETIME
	* INDEFINITE_LIFETIME} indicates that the credential element does not
	* expire.  A return value of 0 indicates that the credential element is
	* already expired.
	*
	* @param mech the Oid of the mechanism whose acceptor credential element
	* should be queried.
	*
	* @throws GSSException containing the following
	* major error codes:
	*         {@link GSSException#BAD_MECH GSSException.BAD_MECH},
	*         {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload public function getRemainingAcceptLifetime(mech : org.ietf.jgss.Oid) : Int;
	
	/**
	* Returns the credential usage mode. In other words, it
	* tells us if this credential can be used for initiating or accepting
	* security contexts. It does not tell us which mechanism(s) has to be
	* used in order to do so. It is expected that an application will allow
	* the GSS-API to pick a default mechanism after calling this method.
	*
	* @return The return value will be one of {@link #INITIATE_ONLY
	* INITIATE_ONLY}, {@link #ACCEPT_ONLY ACCEPT_ONLY}, and {@link
	* #INITIATE_AND_ACCEPT INITIATE_AND_ACCEPT}.
	*
	* @throws GSSException containing the following
	* major error codes:
	*         {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload public function getUsage() : Int;
	
	/**
	* Returns the credential usage mode for a specific mechanism. In other
	* words, it tells us if this credential can be used
	* for initiating or accepting security contexts with a given underlying
	* mechanism.
	*
	* @return The return value will be one of {@link #INITIATE_ONLY
	* INITIATE_ONLY}, {@link #ACCEPT_ONLY ACCEPT_ONLY}, and {@link
	* #INITIATE_AND_ACCEPT INITIATE_AND_ACCEPT}.
	* @param mech the Oid of the mechanism whose credentials usage mode is
	* to be determined.
	*
	* @throws GSSException containing the following
	* major error codes:
	*         {@link GSSException#BAD_MECH GSSException.BAD_MECH},
	*         {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload public function getUsage(mech : org.ietf.jgss.Oid) : Int;
	
	/**
	* Returns a list of mechanisms supported by this credential. It does
	* not tell us which ones can be used to initiate
	* contexts and which ones can be used to accept contexts. The
	* application must call the {@link #getUsage(Oid) getUsage} method with
	* each of the returned Oid's to determine the possible modes of
	* usage.
	*
	* @return an array of Oid's corresponding to the supported mechanisms.
	*
	* @throws GSSException containing the following
	* major error codes:
	*         {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload public function getMechs() : java.NativeArray<org.ietf.jgss.Oid>;
	
	/**
	* Adds a mechanism specific credential-element to an existing
	* credential.  This method allows the construction of credentials, one
	* mechanism at a time.<p>
	*
	* This routine is envisioned to be used mainly by context acceptors
	* during the creation of acceptor credentials which are to be used
	* with a variety of clients using different security mechanisms.<p>
	*
	* This routine adds the new credential element "in-place".  To add the
	* element in a new credential, first call <code>clone</code> to obtain a
	* copy of this credential, then call its <code>add</code> method.<p>
	*
	* As always, GSS-API implementations must impose a local access-control
	* policy on callers to prevent unauthorized callers from acquiring
	* credentials to which they are not entitled.
	*
	* Non-default values for initLifetime and acceptLifetime cannot always
	* be honored by the underlying mechanisms, thus callers should be
	* prepared to call {@link #getRemainingInitLifetime(Oid)
	* getRemainingInitLifetime} and {@link #getRemainingAcceptLifetime(Oid)
	* getRemainingAcceptLifetime} on the credential.
	*
	* @param name the name of the principal for whom this credential is to
	* be acquired.  Use <code>null</code> to specify the default
	* principal.
	* @param initLifetime the number of seconds that the credential element
	* should remain valid for initiating of security contexts. Use {@link
	* GSSCredential#INDEFINITE_LIFETIME GSSCredential.INDEFINITE_LIFETIME}
	* to request that the credentials have the maximum permitted lifetime
	* for this.  Use {@link GSSCredential#DEFAULT_LIFETIME
	* GSSCredential.DEFAULT_LIFETIME} to request default credential lifetime
	* for this.
	* @param acceptLifetime the number of seconds that the credential
	* element should remain valid for accepting security contexts. Use {@link
	* GSSCredential#INDEFINITE_LIFETIME GSSCredential.INDEFINITE_LIFETIME}
	* to request that the credentials have the maximum permitted lifetime
	* for this.  Use {@link GSSCredential#DEFAULT_LIFETIME
	* GSSCredential.DEFAULT_LIFETIME} to request default credential lifetime
	* for this.
	* @param mech the mechanism over which the credential is to be acquired.
	* @param usage the usage mode that this credential
	* element should add to the credential. The value
	* of this parameter must be one of:
	* {@link #INITIATE_AND_ACCEPT INITIATE_AND_ACCEPT},
	* {@link #ACCEPT_ONLY ACCEPT_ONLY}, and
	* {@link #INITIATE_ONLY INITIATE_ONLY}.
	*
	* @throws GSSException containing the following
	* major error codes:
	*         {@link GSSException#DUPLICATE_ELEMENT
	*                          GSSException.DUPLICATE_ELEMENT},
	*         {@link GSSException#BAD_MECH GSSException.BAD_MECH},
	*         {@link GSSException#BAD_NAMETYPE GSSException.BAD_NAMETYPE},
	*         {@link GSSException#NO_CRED GSSException.NO_CRED},
	*         {@link GSSException#CREDENTIALS_EXPIRED
	*                                  GSSException.CREDENTIALS_EXPIRED},
	*         {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload public function add(name : org.ietf.jgss.GSSName, initLifetime : Int, acceptLifetime : Int, mech : org.ietf.jgss.Oid, usage : Int) : Void;
	
	
}
