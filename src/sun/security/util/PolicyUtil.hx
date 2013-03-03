package sun.security.util;
/*
* Copyright (c) 2004, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class PolicyUtil
{
	/*
	* Fast path reading from file urls in order to avoid calling
	* FileURLConnection.connect() which can be quite slow the first time
	* it is called. We really should clean up FileURLConnection so that
	* this is not a problem but in the meantime this fix helps reduce
	* start up time noticeably for the new launcher. -- DAC
	*/
	@:overload @:public @:static public static function getInputStream(url : java.net.URL) : java.io.InputStream;
	
	/**
	* this is intended for use by policytool and the policy parser to
	* instantiate a KeyStore from the information in the GUI/policy file
	*/
	@:overload @:public @:static public static function getKeyStore(policyUrl : java.net.URL, keyStoreName : String, keyStoreType : String, keyStoreProvider : String, storePassURL : String, debug : sun.security.util.Debug) : java.security.KeyStore;
	
	
}
