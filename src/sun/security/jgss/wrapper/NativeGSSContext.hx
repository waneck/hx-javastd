package sun.security.jgss.wrapper;
/*
* Copyright (c) 2005, 2009, Oracle and/or its affiliates. All rights reserved.
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
* This class is essentially a wrapper class for the gss_ctx_id_t
* structure of the native GSS library.
* @author Valerie Peng
* @since 1.6
*/
@:require(java6) @:internal extern class NativeGSSContext implements sun.security.jgss.spi.GSSContextSpi
{
	@:overload public function getProvider() : java.security.Provider;
	
	@:overload public function initSecContext(is : java.io.InputStream, mechTokenLen : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function acceptSecContext(is : java.io.InputStream, mechTokenLen : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function isEstablished() : Bool;
	
	@:overload public function dispose() : Void;
	
	@:overload public function getWrapSizeLimit(qop : Int, confReq : Bool, maxTokenSize : Int) : Int;
	
	@:overload public function wrap(inBuf : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int, msgProp : org.ietf.jgss.MessageProp) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function wrap(inBuf : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int, os : java.io.OutputStream, msgProp : org.ietf.jgss.MessageProp) : Void;
	
	@:overload public function wrap(inBuf : java.NativeArray<java.StdTypes.Int8>, inOffset : Int, len : Int, outBuf : java.NativeArray<java.StdTypes.Int8>, outOffset : Int, msgProp : org.ietf.jgss.MessageProp) : Int;
	
	@:overload public function wrap(inStream : java.io.InputStream, outStream : java.io.OutputStream, msgProp : org.ietf.jgss.MessageProp) : Void;
	
	@:overload public function unwrap(inBuf : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int, msgProp : org.ietf.jgss.MessageProp) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function unwrap(inBuf : java.NativeArray<java.StdTypes.Int8>, inOffset : Int, len : Int, outBuf : java.NativeArray<java.StdTypes.Int8>, outOffset : Int, msgProp : org.ietf.jgss.MessageProp) : Int;
	
	@:overload public function unwrap(inStream : java.io.InputStream, outStream : java.io.OutputStream, msgProp : org.ietf.jgss.MessageProp) : Void;
	
	@:overload public function unwrap(inStream : java.io.InputStream, outBuf : java.NativeArray<java.StdTypes.Int8>, outOffset : Int, msgProp : org.ietf.jgss.MessageProp) : Int;
	
	@:overload public function getMIC(_in : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int, msgProp : org.ietf.jgss.MessageProp) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function getMIC(inStream : java.io.InputStream, outStream : java.io.OutputStream, msgProp : org.ietf.jgss.MessageProp) : Void;
	
	@:overload public function verifyMIC(inToken : java.NativeArray<java.StdTypes.Int8>, tOffset : Int, tLen : Int, inMsg : java.NativeArray<java.StdTypes.Int8>, mOffset : Int, mLen : Int, msgProp : org.ietf.jgss.MessageProp) : Void;
	
	@:overload public function verifyMIC(tokStream : java.io.InputStream, msgStream : java.io.InputStream, msgProp : org.ietf.jgss.MessageProp) : Void;
	
	@:overload public function export() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function requestMutualAuth(state : Bool) : Void;
	
	@:overload public function requestReplayDet(state : Bool) : Void;
	
	@:overload public function requestSequenceDet(state : Bool) : Void;
	
	@:overload public function requestCredDeleg(state : Bool) : Void;
	
	@:overload public function requestAnonymity(state : Bool) : Void;
	
	@:overload public function requestConf(state : Bool) : Void;
	
	@:overload public function requestInteg(state : Bool) : Void;
	
	@:overload public function requestDelegPolicy(state : Bool) : Void;
	
	@:overload public function requestLifetime(lifetime : Int) : Void;
	
	@:overload public function setChannelBinding(cb : org.ietf.jgss.ChannelBinding) : Void;
	
	@:overload public function getCredDelegState() : Bool;
	
	@:overload public function getMutualAuthState() : Bool;
	
	@:overload public function getReplayDetState() : Bool;
	
	@:overload public function getSequenceDetState() : Bool;
	
	@:overload public function getAnonymityState() : Bool;
	
	@:overload public function isTransferable() : Bool;
	
	@:overload public function isProtReady() : Bool;
	
	@:overload public function getConfState() : Bool;
	
	@:overload public function getIntegState() : Bool;
	
	@:overload public function getDelegPolicyState() : Bool;
	
	@:overload public function getLifetime() : Int;
	
	@:overload public function getSrcName() : sun.security.jgss.spi.GSSNameSpi;
	
	@:overload public function getTargName() : sun.security.jgss.spi.GSSNameSpi;
	
	@:overload public function getMech() : org.ietf.jgss.Oid;
	
	@:overload public function getDelegCred() : sun.security.jgss.spi.GSSCredentialSpi;
	
	@:overload public function isInitiator() : Bool;
	
	@:overload private function finalize() : Void;
	
	@:overload public function inquireSecContext(type : com.sun.security.jgss.InquireType) : Dynamic;
	
	
}
