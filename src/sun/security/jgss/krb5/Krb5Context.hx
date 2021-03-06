package sun.security.jgss.krb5;
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
/**
* Implements the mechanism specific context class for the Kerberos v5
* GSS-API mechanism.
*
* @author Mayank Upadhyay
* @author Ram Marti
* @since 1.4
*/
@:require(java4) @:internal extern class Krb5Context implements sun.security.jgss.spi.GSSContextSpi
{
	@:public @:static @:final public static var SESSION_KEY(default, null) : Int;
	
	@:public @:static @:final public static var INITIATOR_SUBKEY(default, null) : Int;
	
	@:public @:static @:final public static var ACCEPTOR_SUBKEY(default, null) : Int;
	
	/**
	* Constructor for Krb5Context to import a previously exported context.
	*/
	@:overload @:public public function new(caller : sun.security.jgss.GSSCaller, interProcessToken : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Method to determine if the context can be exported and then
	* re-imported.
	*/
	@:overload @:public @:final public function isTransferable() : Bool;
	
	/**
	* The lifetime remaining for this context.
	*/
	@:overload @:public @:final public function getLifetime() : Int;
	
	/**
	* Requests the desired lifetime. Can only be used on the context
	* initiator's side.
	*/
	@:overload @:public public function requestLifetime(lifetime : Int) : Void;
	
	/**
	* Requests that confidentiality be available.
	*/
	@:overload @:public @:final public function requestConf(value : Bool) : Void;
	
	/**
	* Is confidentiality available?
	*/
	@:overload @:public @:final public function getConfState() : Bool;
	
	/**
	* Requests that integrity be available.
	*/
	@:overload @:public @:final public function requestInteg(value : Bool) : Void;
	
	/**
	* Is integrity available?
	*/
	@:overload @:public @:final public function getIntegState() : Bool;
	
	/**
	* Requests that credential delegation be done during context
	* establishment.
	*/
	@:overload @:public @:final public function requestCredDeleg(value : Bool) : Void;
	
	/**
	* Is credential delegation enabled?
	*/
	@:overload @:public @:final public function getCredDelegState() : Bool;
	
	/**
	* Requests that mutual authentication be done during context
	* establishment. Since this is fromm the client's perspective, it
	* essentially requests that the server be authenticated.
	*/
	@:overload @:public @:final public function requestMutualAuth(value : Bool) : Void;
	
	/**
	* Is mutual authentication enabled? Since this is from the client's
	* perspective, it essentially meas that the server is being
	* authenticated.
	*/
	@:overload @:public @:final public function getMutualAuthState() : Bool;
	
	/**
	* Requests that replay detection be done on the GSS wrap and MIC
	* tokens.
	*/
	@:overload @:public @:final public function requestReplayDet(value : Bool) : Void;
	
	/**
	* Is replay detection enabled on the GSS wrap and MIC tokens?
	* We enable replay detection if sequence checking is enabled.
	*/
	@:overload @:public @:final public function getReplayDetState() : Bool;
	
	/**
	* Requests that sequence checking be done on the GSS wrap and MIC
	* tokens.
	*/
	@:overload @:public @:final public function requestSequenceDet(value : Bool) : Void;
	
	/**
	* Is sequence checking enabled on the GSS Wrap and MIC tokens?
	* We enable sequence checking if replay detection is enabled.
	*/
	@:overload @:public @:final public function getSequenceDetState() : Bool;
	
	/**
	* Requests that the deleg policy be respected.
	*/
	@:overload @:public @:final public function requestDelegPolicy(value : Bool) : Void;
	
	/**
	* Is deleg policy respected?
	*/
	@:overload @:public @:final public function getDelegPolicyState() : Bool;
	
	/*
	* Anonymity is a little different in that after an application
	* requests anonymity it will want to know whether the mechanism
	* can support it or not, prior to sending any tokens across for
	* context establishment. Since this is from the initiator's
	* perspective, it essentially requests that the initiator be
	* anonymous.
	*/
	@:overload @:public @:final public function requestAnonymity(value : Bool) : Void;
	
	@:overload @:public @:final public function getAnonymityState() : Bool;
	
	@:overload @:public @:final public function getKeySrc() : Int;
	
	/**
	* Sets the channel bindings to be used during context
	* establishment.
	*/
	@:overload @:public @:final public function setChannelBinding(channelBinding : org.ietf.jgss.ChannelBinding) : Void;
	
	/**
	* Returns the mechanism oid.
	*
	* @return the Oid of this context
	*/
	@:overload @:public @:final public function getMech() : org.ietf.jgss.Oid;
	
	/**
	* Returns the context initiator name.
	*
	* @return initiator name
	* @exception GSSException
	*/
	@:overload @:public @:final public function getSrcName() : sun.security.jgss.spi.GSSNameSpi;
	
	/**
	* Returns the context acceptor.
	*
	* @return context acceptor(target) name
	* @exception GSSException
	*/
	@:overload @:public @:final public function getTargName() : sun.security.jgss.spi.GSSNameSpi;
	
	/**
	* Returns the delegated credential for the context. This
	* is an optional feature of contexts which not all
	* mechanisms will support. A context can be requested to
	* support credential delegation by using the <b>CRED_DELEG</b>.
	* This is only valid on the acceptor side of the context.
	* @return GSSCredentialSpi object for the delegated credential
	* @exception GSSException
	* @see GSSContext#getDelegCredState
	*/
	@:overload @:public @:final public function getDelegCred() : sun.security.jgss.spi.GSSCredentialSpi;
	
	/**
	* Tests if this is the initiator side of the context.
	*
	* @return boolean indicating if this is initiator (true)
	*  or target (false)
	*/
	@:overload @:public @:final public function isInitiator() : Bool;
	
	/**
	* Tests if the context can be used for per-message service.
	* Context may allow the calls to the per-message service
	* functions before being fully established.
	*
	* @return boolean indicating if per-message methods can
	*  be called.
	*/
	@:overload @:public @:final public function isProtReady() : Bool;
	
	/**
	* Initiator context establishment call. This method may be
	* required to be called several times. A CONTINUE_NEEDED return
	* call indicates that more calls are needed after the next token
	* is received from the peer.
	*
	* @param is contains the token received from the peer. On the
	*  first call it will be ignored.
	* @return any token required to be sent to the peer
	*    It is responsibility of the caller
	*    to send the token to its peer for processing.
	* @exception GSSException
	*/
	@:overload @:public @:final public function initSecContext(is : java.io.InputStream, mechTokenSize : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public @:final public function isEstablished() : Bool;
	
	/**
	* Acceptor's context establishment call. This method may be
	* required to be called several times. A CONTINUE_NEEDED return
	* call indicates that more calls are needed after the next token
	* is received from the peer.
	*
	* @param is contains the token received from the peer.
	* @return any token required to be sent to the peer
	*    It is responsibility of the caller
	*    to send the token to its peer for processing.
	* @exception GSSException
	*/
	@:overload @:public @:final public function acceptSecContext(is : java.io.InputStream, mechTokenSize : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Queries the context for largest data size to accomodate
	* the specified protection and be <= maxTokSize.
	*
	* @param qop the quality of protection that the context will be
	*  asked to provide.
	* @param confReq a flag indicating whether confidentiality will be
	*  requested or not
	* @param outputSize the maximum size of the output token
	* @return the maximum size for the input message that can be
	*  provided to the wrap() method in order to guarantee that these
	*  requirements are met.
	* @throws GSSException
	*/
	@:overload @:public @:final public function getWrapSizeLimit(qop : Int, confReq : Bool, maxTokSize : Int) : Int;
	
	/*
	* Per-message calls depend on the sequence number. The sequence number
	* synchronization is at a finer granularity because wrap and getMIC
	* care about the local sequence number (mySeqNumber) where are unwrap
	* and verifyMIC care about the remote sequence number (peerSeqNumber).
	*/
	@:overload @:public @:final public function wrap(inBuf : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int, msgProp : org.ietf.jgss.MessageProp) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public @:final public function wrap(inBuf : java.NativeArray<java.StdTypes.Int8>, inOffset : Int, len : Int, outBuf : java.NativeArray<java.StdTypes.Int8>, outOffset : Int, msgProp : org.ietf.jgss.MessageProp) : Int;
	
	@:overload @:public @:final public function wrap(inBuf : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int, os : java.io.OutputStream, msgProp : org.ietf.jgss.MessageProp) : Void;
	
	@:overload @:public @:final public function wrap(is : java.io.InputStream, os : java.io.OutputStream, msgProp : org.ietf.jgss.MessageProp) : Void;
	
	@:overload @:public @:final public function unwrap(inBuf : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int, msgProp : org.ietf.jgss.MessageProp) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public @:final public function unwrap(inBuf : java.NativeArray<java.StdTypes.Int8>, inOffset : Int, len : Int, outBuf : java.NativeArray<java.StdTypes.Int8>, outOffset : Int, msgProp : org.ietf.jgss.MessageProp) : Int;
	
	@:overload @:public @:final public function unwrap(is : java.io.InputStream, outBuf : java.NativeArray<java.StdTypes.Int8>, outOffset : Int, msgProp : org.ietf.jgss.MessageProp) : Int;
	
	@:overload @:public @:final public function unwrap(is : java.io.InputStream, os : java.io.OutputStream, msgProp : org.ietf.jgss.MessageProp) : Void;
	
	@:overload @:public @:final public function getMIC(inMsg : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int, msgProp : org.ietf.jgss.MessageProp) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public @:final public function getMIC(is : java.io.InputStream, os : java.io.OutputStream, msgProp : org.ietf.jgss.MessageProp) : Void;
	
	@:overload @:public @:final public function verifyMIC(inTok : java.NativeArray<java.StdTypes.Int8>, tokOffset : Int, tokLen : Int, inMsg : java.NativeArray<java.StdTypes.Int8>, msgOffset : Int, msgLen : Int, msgProp : org.ietf.jgss.MessageProp) : Void;
	
	@:overload @:public @:final public function verifyMIC(is : java.io.InputStream, msgStr : java.io.InputStream, mProp : org.ietf.jgss.MessageProp) : Void;
	
	/**
	* Produces a token representing this context. After this call
	* the context will no longer be usable until an import is
	* performed on the returned token.
	*
	* @param os the output token will be written to this stream
	* @exception GSSException
	*/
	@:overload @:public @:final public function export() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Releases context resources and terminates the
	* context between 2 peer.
	*
	* @exception GSSException with major codes NO_CONTEXT, FAILURE.
	*/
	@:overload @:public @:final public function dispose() : Void;
	
	@:overload @:public @:final public function getProvider() : java.security.Provider;
	
	/**
	* Return the mechanism-specific attribute associated with {@code type}.
	*/
	@:overload @:public public function inquireSecContext(type : com.sun.security.jgss.InquireType) : Dynamic;
	
	@:overload @:public public function setTktFlags(tktFlags : java.NativeArray<Bool>) : Void;
	
	@:overload @:public public function setAuthTime(authTime : String) : Void;
	
	@:overload @:public public function setAuthzData(authzData : java.NativeArray<com.sun.security.jgss.AuthorizationDataEntry>) : Void;
	
	
}
/**
* The session key returned by inquireSecContext(KRB5_INQ_SSPI_SESSION_KEY)
*/
@:native('sun$security$jgss$krb5$Krb5Context$KerberosSessionKey') @:internal extern class Krb5Context_KerberosSessionKey implements java.security.Key
{
	@:overload @:public public function getAlgorithm() : String;
	
	@:overload @:public public function getFormat() : String;
	
	@:overload @:public public function getEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function toString() : String;
	
	
}
