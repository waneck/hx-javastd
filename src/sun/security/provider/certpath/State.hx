package sun.security.provider.certpath;
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
@:internal extern interface State extends java.lang.Cloneable
{
	/**
	* Update the state with the next certificate added to the path.
	*
	* @param cert the certificate which is used to update the state
	*/
	@:overload @:public public function updateState(cert : java.security.cert.X509Certificate) : Void;
	
	/**
	* Returns a boolean flag indicating if the state is initial
	* (just starting)
	*
	* @return boolean flag indicating if the state is initial (just starting)
	*/
	@:overload @:public public function isInitial() : Bool;
	
	/**
	* Returns a boolean flag indicating if a key lacking necessary key
	* algorithm parameters has been encountered.
	*
	* @return boolean flag indicating if key lacking parameters encountered.
	*/
	@:overload @:public public function keyParamsNeeded() : Bool;
	
	
}
