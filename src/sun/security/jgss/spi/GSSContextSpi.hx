package sun.security.jgss.spi;
/*
* Copyright (c) 2000, 2009, Oracle and/or its affiliates. All rights reserved.
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
/*
*
*  (C) Copyright IBM Corp. 1999 All Rights Reserved.
*  Copyright 1997 The Open Group Research Institute.  All rights reserved.
*/
/**
* This interface is implemented by a mechanism specific instance of a GSS
* security context.
* A GSSContextSpi object can be thought of having 3 states:
*    -before initialization
*    -during initialization with its peer
*    -after it is established
* <p>
* The context options can only be requested in state 1. In state 3,
* the per message operations are available to the callers. The get
* methods for the context options will return the requested options
* while in state 1 and 2, and the established values in state 3.
* Some mechanisms may allow the access to the per-message operations
* and the context flags before the context is fully established. The
* isProtReady method is used to indicate that these services are
* available.
*<p>
* <strong>
* Context establishment tokens are defined in a mechanism independent
* format in section 3.1 of RFC 2743. The GSS-Framework will add
* and remove the mechanism independent header portion of this token format
* depending on whether a token is received or is being sent. The mechanism
* should only generate or expect to read the inner-context token portion..
* <p>
* On the other hands, tokens used for per-message calls are generated
* entirely by the mechanism. It is possible that the mechanism chooses to
* encase inner-level per-message tokens in a header similar to that used
* for initial tokens, however, this is upto the mechanism to do. The token
* to/from the per-message calls are opaque to the GSS-Framework.
* </strong>
* <p>
* An attempt has been made to allow for reading the peer's tokens from an
* InputStream and writing tokens for the peer to an OutputStream. This
* allows applications to pass in streams that are obtained from their network
* connections and thus minimize the buffer copies that will happen. This
* is especially important for tokens generated by wrap() which are
* proportional in size to the length of the application data being
* wrapped, and are probably also the most frequently used type of tokens.
* <p>
* It is anticipated that most applications will want to use wrap() in a
* fashion where they obtain the application bytes to wrap from a byte[]
* but want to output the wrap token straight to an
* OutputStream. Similarly, they will want to use unwrap() where they read
* the token directly form an InputStream but output it to some byte[] for
* the application to process. Unfortunately the high level GSS bindings
* do not contain overloaded forms of wrap() and unwrap() that do just
* this, however we have accomodated those cases here with the expectation
* that this will be rolled into the high level bindings sooner or later.
*
* @author Mayank Upadhyay
*/
extern interface GSSContextSpi
{
	@:overload public function getProvider() : java.security.Provider;
	
	@:overload public function requestLifetime(lifetime : Int) : Void;
	
	@:overload public function requestMutualAuth(state : Bool) : Void;
	
	@:overload public function requestReplayDet(state : Bool) : Void;
	
	@:overload public function requestSequenceDet(state : Bool) : Void;
	
	@:overload public function requestCredDeleg(state : Bool) : Void;
	
	@:overload public function requestAnonymity(state : Bool) : Void;
	
	@:overload public function requestConf(state : Bool) : Void;
	
	@:overload public function requestInteg(state : Bool) : Void;
	
	@:overload public function requestDelegPolicy(state : Bool) : Void;
	
	@:overload public function setChannelBinding(cb : org.ietf.jgss.ChannelBinding) : Void;
	
	@:overload public function getCredDelegState() : Bool;
	
	@:overload public function getMutualAuthState() : Bool;
	
	@:overload public function getReplayDetState() : Bool;
	
	@:overload public function getSequenceDetState() : Bool;
	
	@:overload public function getAnonymityState() : Bool;
	
	@:overload public function getDelegPolicyState() : Bool;
	
	@:overload public function isTransferable() : Bool;
	
	@:overload public function isProtReady() : Bool;
	
	@:overload public function isInitiator() : Bool;
	
	@:overload public function getConfState() : Bool;
	
	@:overload public function getIntegState() : Bool;
	
	@:overload public function getLifetime() : Int;
	
	@:overload public function isEstablished() : Bool;
	
	@:overload public function getSrcName() : sun.security.jgss.spi.GSSNameSpi;
	
	@:overload public function getTargName() : sun.security.jgss.spi.GSSNameSpi;
	
	@:overload public function getMech() : org.ietf.jgss.Oid;
	
	@:overload public function getDelegCred() : sun.security.jgss.spi.GSSCredentialSpi;
	
	/**
	* Initiator context establishment call. This method may be
	* required to be called several times. A CONTINUE_NEEDED return
	* call indicates that more calls are needed after the next token
	* is received from the peer.
	* <p>
	* This method is called by the GSS-Framework when the application
	* calls the initSecContext method on the GSSContext implementation
	* that it has a reference to.
	* <p>
	* All overloaded forms of GSSContext.initSecContext() can be handled
	* with this mechanism level initSecContext. Since the output token
	* from this method is a fixed size, not exeedingly large, and a one
	* time deal, an overloaded form that takes an OutputStream has not
	* been defined. The GSS-Framwork can write the returned byte[] to any
	* application provided OutputStream. Similarly, any application input
	* int he form of byte arrays will be wrapped in an input stream by the
	* GSS-Framework and then passed here.
	* <p>
	* <strong>
	* The GSS-Framework will strip off the leading mechanism independent
	* GSS-API header. In other words, only the mechanism specific
	* inner-context token of RFC 2743 section 3.1 will be available on the
	* InputStream.
	* </strong>
	*
	* @param is contains the inner context token portion of the GSS token
	* received from the peer. On the first call to initSecContext, there
	* will be no token hence it will be ignored.
	* @param mechTokenSize the size of the inner context token as read by
	* the GSS-Framework from the mechanism independent GSS-API level
	* header.
	* @return any inner-context token required to be sent to the peer as
	* part of a GSS token. The mechanism should not add the mechanism
	* independent part of the token. The GSS-Framework will add that on
	* the way out.
	* @exception GSSException may be thrown
	*/
	@:overload public function initSecContext(is : java.io.InputStream, mechTokenSize : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Acceptor's context establishment call. This method may be
	* required to be called several times. A CONTINUE_NEEDED return
	* call indicates that more calls are needed after the next token
	* is received from the peer.
	* <p>
	* This method is called by the GSS-Framework when the application
	* calls the acceptSecContext method on the GSSContext implementation
	* that it has a reference to.
	* <p>
	* All overloaded forms of GSSContext.acceptSecContext() can be handled
	* with this mechanism level acceptSecContext. Since the output token
	* from this method is a fixed size, not exeedingly large, and a one
	* time deal, an overloaded form that takes an OutputStream has not
	* been defined. The GSS-Framwork can write the returned byte[] to any
	* application provided OutputStream. Similarly, any application input
	* int he form of byte arrays will be wrapped in an input stream by the
	* GSS-Framework and then passed here.
	* <p>
	* <strong>
	* The GSS-Framework will strip off the leading mechanism independent
	* GSS-API header. In other words, only the mechanism specific
	* inner-context token of RFC 2743 section 3.1 will be available on the
	* InputStream.
	* </strong>
	*
	* @param is contains the inner context token portion of the GSS token
	* received from the peer.
	* @param mechTokenSize the size of the inner context token as read by
	* the GSS-Framework from the mechanism independent GSS-API level
	* header.
	* @return any inner-context token required to be sent to the peer as
	* part of a GSS token. The mechanism should not add the mechanism
	* independent part of the token. The GSS-Framework will add that on
	* the way out.
	* @exception GSSException may be thrown
	*/
	@:overload public function acceptSecContext(is : java.io.InputStream, mechTokenSize : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Queries the context for largest data size to accomodate
	* the specified protection and for the token to remain less then
	* maxTokSize.
	*
	* @param qop the quality of protection that the context will be
	*    asked to provide.
	* @param confReq a flag indicating whether confidentiality will be
	*    requested or not
	* @param outputSize the maximum size of the output token
	* @return the maximum size for the input message that can be
	*    provided to the wrap() method in order to guarantee that these
	*    requirements are met.
	* @exception GSSException may be thrown
	*/
	@:overload public function getWrapSizeLimit(qop : Int, confReq : Bool, maxTokSize : Int) : Int;
	
	/**
	* Provides per-message token encapsulation.
	*
	* @param is the user-provided message to be protected
	* @param os the token to be sent to the peer. It includes
	*    the message from <i>is</i> with the requested protection.
	* @param msgPro on input it contains the requested qop and
	*    confidentiality state, on output, the applied values
	* @exception GSSException may be thrown
	* @see unwrap
	*/
	@:overload public function wrap(is : java.io.InputStream, os : java.io.OutputStream, msgProp : org.ietf.jgss.MessageProp) : Void;
	
	/**
	* For apps that want simplicity and don't care about buffer copies.
	*/
	@:overload public function wrap(inBuf : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int, msgProp : org.ietf.jgss.MessageProp) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Retrieves the message token previously encapsulated in the wrap
	* call.
	*
	* @param is the token from the peer
	* @param os unprotected message data
	* @param msgProp will contain the applied qop and confidentiality
	*    of the input token and any informatory status values
	* @exception GSSException may be thrown
	* @see wrap
	*/
	@:overload public function unwrap(is : java.io.InputStream, os : java.io.OutputStream, msgProp : org.ietf.jgss.MessageProp) : Void;
	
	/**
	* For apps that want simplicity and dont care about buffer copies.
	*/
	@:overload public function unwrap(inBuf : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int, msgProp : org.ietf.jgss.MessageProp) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Applies per-message integrity services.
	*
	* @param is the user-provided message
	* @param os the token to be sent to the peer along with the
	*    message token. The message token <b>is not</b> encapsulated.
	* @param msgProp on input the desired QOP and output the applied QOP
	* @exception GSSException
	*/
	@:overload public function getMIC(is : java.io.InputStream, os : java.io.OutputStream, msgProp : org.ietf.jgss.MessageProp) : Void;
	
	@:overload public function getMIC(inMsg : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int, msgProp : org.ietf.jgss.MessageProp) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Checks the integrity of the supplied tokens.
	* This token was previously generated by getMIC.
	*
	* @param is token generated by getMIC
	* @param msgStr the message to check integrity for
	* @param msgProp will contain the applied QOP and confidentiality
	*    states of the token as well as any informatory status codes
	* @exception GSSException may be thrown
	*/
	@:overload public function verifyMIC(is : java.io.InputStream, msgStr : java.io.InputStream, mProp : org.ietf.jgss.MessageProp) : Void;
	
	@:overload public function verifyMIC(inTok : java.NativeArray<java.StdTypes.Int8>, tokOffset : Int, tokLen : Int, inMsg : java.NativeArray<java.StdTypes.Int8>, msgOffset : Int, msgLen : Int, msgProp : org.ietf.jgss.MessageProp) : Void;
	
	/**
	* Produces a token representing this context. After this call
	* the context will no longer be usable until an import is
	* performed on the returned token.
	*
	* @return exported context token
	* @exception GSSException may be thrown
	*/
	@:overload public function export() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Releases context resources and terminates the
	* context between 2 peer.
	*
	* @exception GSSException may be thrown
	*/
	@:overload public function dispose() : Void;
	
	/**
	* Return the mechanism-specific attribute associated with (@code type}.
	*
	* @param type the type of the attribute requested
	* @return the attribute
	* @throws GSSException see {@link ExtendedGSSContext#inquireSecContext}
	* for details
	*/
	@:overload public function inquireSecContext(type : com.sun.security.jgss.InquireType) : Dynamic;
	
	
}