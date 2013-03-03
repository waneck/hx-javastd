package sun.net.www.protocol.http.ntlm;
/*
* Copyright (c) 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class NTLMAuthenticationCallback
{
	@:overload @:public @:static public static function setNTLMAuthenticationCallback(_callback : sun.net.www.protocol.http.ntlm.NTLMAuthenticationCallback) : Void;
	
	@:overload @:public @:static public static function getNTLMAuthenticationCallback() : sun.net.www.protocol.http.ntlm.NTLMAuthenticationCallback;
	
	/**
	* Returns true if the given site is trusted, i.e. we can try
	* transparent Authentication.
	*/
	@:overload @:public @:abstract public function isTrustedSite(url : java.net.URL) : Bool;
	
	
}
@:native('sun$net$www$protocol$http$ntlm$NTLMAuthenticationCallback$DefaultNTLMAuthenticationCallback') @:internal extern class NTLMAuthenticationCallback_DefaultNTLMAuthenticationCallback extends sun.net.www.protocol.http.ntlm.NTLMAuthenticationCallback
{
	@:overload @:public override public function isTrustedSite(url : java.net.URL) : Bool;
	
	
}
