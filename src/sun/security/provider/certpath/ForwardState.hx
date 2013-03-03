package sun.security.provider.certpath;
/*
* Copyright (c) 2000, 2012, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class ForwardState implements sun.security.provider.certpath.State
{
	/* the checker used for revocation status */
	@:public public var crlChecker : sun.security.provider.certpath.CrlRevocationChecker;
	
	/**
	* Returns a boolean flag indicating if the state is initial
	* (just starting)
	*
	* @return boolean flag indicating if the state is initial (just starting)
	*/
	@:overload @:public public function isInitial() : Bool;
	
	/**
	* Return boolean flag indicating whether a public key that needs to inherit
	* key parameters has been encountered.
	*
	* @return boolean true if key needing to inherit parameters has been
	* encountered; false otherwise.
	*/
	@:overload @:public public function keyParamsNeeded() : Bool;
	
	/**
	* Display state for debugging purposes
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Initialize the state.
	*
	* @param certPathCheckers the list of user-defined PKIXCertPathCheckers
	*/
	@:overload @:public public function initState(certPathCheckers : java.util.List<java.security.cert.PKIXCertPathChecker>) : Void;
	
	/**
	* Update the state with the next certificate added to the path.
	*
	* @param cert the certificate which is used to update the state
	*/
	@:overload @:public public function updateState(cert : java.security.cert.X509Certificate) : Void;
	
	/*
	* Clone current state. The state is cloned as each cert is
	* added to the path. This is necessary if backtracking occurs,
	* and a prior state needs to be restored.
	*
	* Note that this is a SMART clone. Not all fields are fully copied,
	* because some of them will
	* not have their contents modified by subsequent calls to updateState.
	*/
	@:overload @:public public function clone() : Dynamic;
	
	
}
