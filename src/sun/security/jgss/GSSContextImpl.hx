package sun.security.jgss;
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
* This class represents the JGSS security context and its associated
* operations.  JGSS security contexts are established between
* peers using locally established credentials.  Multiple contexts
* may exist simultaneously between a pair of peers, using the same
* or different set of credentials.  The JGSS is independent of
* the underlying transport protocols and depends on its callers to
* transport the tokens between peers.
* <p>
* The context object can be thought of as having 3 implicit states:
* before it is established, during its context establishment, and
* after a fully established context exists.
* <p>
* Before the context establishment phase is initiated, the context
* initiator may request specific characteristics desired of the
* established context. These can be set using the set methods. After the
* context is established, the caller can check the actual characteristic
* and services offered by the context using the query methods.
* <p>
* The context establishment phase begins with the first call to the
* initSecContext method by the context initiator. During this phase the
* initSecContext and acceptSecContext methods will produce GSS-API
* authentication tokens which the calling application needs to send to its
* peer. The initSecContext and acceptSecContext methods may
* return a CONTINUE_NEEDED code which indicates that a token is needed
* from its peer in order to continue the context establishment phase. A
* return code of COMPLETE signals that the local end of the context is
* established. This may still require that a token be sent to the peer,
* depending if one is produced by GSS-API. The isEstablished method can
* also be used to determine if the local end of the context has been
* fully established. During the context establishment phase, the
* isProtReady method may be called to determine if the context can be
* used for the per-message operations. This allows implementation to
* use per-message operations on contexts which aren't fully established.
* <p>
* After the context has been established or the isProtReady method
* returns "true", the query routines can be invoked to determine the actual
* characteristics and services of the established context. The
* application can also start using the per-message methods of wrap and
* getMIC to obtain cryptographic operations on application supplied data.
* <p>
* When the context is no longer needed, the application should call
* dispose to release any system resources the context may be using.
* <DL><DT><B>RFC 2078</b>
*    <DD>This class corresponds to the context level calls together with
* the per message calls of RFC 2078. The gss_init_sec_context and
* gss_accept_sec_context calls have been made simpler by only taking
* required parameters.  The context can have its properties set before
* the first call to initSecContext. The supplementary status codes for the
* per-message operations are returned in an instance of the MessageProp
* class, which is used as an argument in these calls.</dl>
*/
@:internal extern class GSSContextImpl implements com.sun.security.jgss.ExtendedGSSContext
{
	/**
	* Creates a GSSContextImp on the context initiator's side.
	*/
	@:overload @:public public function new(gssManager : sun.security.jgss.GSSManagerImpl, peer : org.ietf.jgss.GSSName, mech : org.ietf.jgss.Oid, myCred : org.ietf.jgss.GSSCredential, lifetime : Int) : Void;
	
	/**
	* Creates a GSSContextImpl on the context acceptor's side.
	*/
	@:overload @:public public function new(gssManager : sun.security.jgss.GSSManagerImpl, myCred : org.ietf.jgss.GSSCredential) : Void;
	
	/**
	* Creates a GSSContextImpl out of a previously exported
	* GSSContext.
	*
	* @see #isTransferable
	*/
	@:overload @:public public function new(gssManager : sun.security.jgss.GSSManagerImpl, interProcessToken : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function initSecContext(inputBuf : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function initSecContext(inStream : java.io.InputStream, outStream : java.io.OutputStream) : Int;
	
	@:overload @:public public function acceptSecContext(inTok : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function acceptSecContext(inStream : java.io.InputStream, outStream : java.io.OutputStream) : Void;
	
	@:overload @:public public function isEstablished() : Bool;
	
	@:overload @:public public function getWrapSizeLimit(qop : Int, confReq : Bool, maxTokenSize : Int) : Int;
	
	@:overload @:public public function wrap(inBuf : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int, msgProp : org.ietf.jgss.MessageProp) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function wrap(inStream : java.io.InputStream, outStream : java.io.OutputStream, msgProp : org.ietf.jgss.MessageProp) : Void;
	
	@:overload @:public public function unwrap(inBuf : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int, msgProp : org.ietf.jgss.MessageProp) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function unwrap(inStream : java.io.InputStream, outStream : java.io.OutputStream, msgProp : org.ietf.jgss.MessageProp) : Void;
	
	@:overload @:public public function getMIC(inMsg : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int, msgProp : org.ietf.jgss.MessageProp) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function getMIC(inStream : java.io.InputStream, outStream : java.io.OutputStream, msgProp : org.ietf.jgss.MessageProp) : Void;
	
	@:overload @:public public function verifyMIC(inTok : java.NativeArray<java.StdTypes.Int8>, tokOffset : Int, tokLen : Int, inMsg : java.NativeArray<java.StdTypes.Int8>, msgOffset : Int, msgLen : Int, msgProp : org.ietf.jgss.MessageProp) : Void;
	
	@:overload @:public public function verifyMIC(tokStream : java.io.InputStream, msgStream : java.io.InputStream, msgProp : org.ietf.jgss.MessageProp) : Void;
	
	@:overload @:public public function export() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function requestMutualAuth(state : Bool) : Void;
	
	@:overload @:public public function requestReplayDet(state : Bool) : Void;
	
	@:overload @:public public function requestSequenceDet(state : Bool) : Void;
	
	@:overload @:public public function requestCredDeleg(state : Bool) : Void;
	
	@:overload @:public public function requestAnonymity(state : Bool) : Void;
	
	@:overload @:public public function requestConf(state : Bool) : Void;
	
	@:overload @:public public function requestInteg(state : Bool) : Void;
	
	@:overload @:public public function requestLifetime(lifetime : Int) : Void;
	
	@:overload @:public public function setChannelBinding(channelBindings : org.ietf.jgss.ChannelBinding) : Void;
	
	@:overload @:public public function getCredDelegState() : Bool;
	
	@:overload @:public public function getMutualAuthState() : Bool;
	
	@:overload @:public public function getReplayDetState() : Bool;
	
	@:overload @:public public function getSequenceDetState() : Bool;
	
	@:overload @:public public function getAnonymityState() : Bool;
	
	@:overload @:public public function isTransferable() : Bool;
	
	@:overload @:public public function isProtReady() : Bool;
	
	@:overload @:public public function getConfState() : Bool;
	
	@:overload @:public public function getIntegState() : Bool;
	
	@:overload @:public public function getLifetime() : Int;
	
	@:overload @:public public function getSrcName() : org.ietf.jgss.GSSName;
	
	@:overload @:public public function getTargName() : org.ietf.jgss.GSSName;
	
	@:overload @:public public function getMech() : org.ietf.jgss.Oid;
	
	@:overload @:public public function getDelegCred() : org.ietf.jgss.GSSCredential;
	
	@:overload @:public public function isInitiator() : Bool;
	
	@:overload @:public public function dispose() : Void;
	
	@:overload @:public public function inquireSecContext(type : com.sun.security.jgss.InquireType) : Dynamic;
	
	@:overload @:public public function requestDelegPolicy(state : Bool) : Void;
	
	@:overload @:public public function getDelegPolicyState() : Bool;
	
	
}
