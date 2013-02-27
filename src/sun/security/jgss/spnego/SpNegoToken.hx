package sun.security.jgss.spnego;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
* Astract class for SPNEGO tokens.
* Implementation is based on RFC 2478
*
* NegotiationToken ::= CHOICE {
*      negTokenInit  [0]        NegTokenInit,
*      negTokenTarg  [1]        NegTokenTarg }
*
*
* @author Seema Malkani
* @since 1.6
*/
@:require(java6) @:internal extern class SpNegoToken extends sun.security.jgss.GSSToken
{
	/**
	* The object identifier corresponding to the SPNEGO GSS-API
	* mechanism.
	*/
	public static var OID : sun.security.util.ObjectIdentifier;
	
	/**
	* Creates SPNEGO token of the specified type.
	*/
	@:overload private function new(tokenType : Int) : Void;
	
	
}
@:native('sun$security$jgss$spnego$SpNegoToken$NegoResult') extern enum SpNegoToken_NegoResult
{
	ACCEPT_COMPLETE;
	ACCEPT_INCOMPLETE;
	REJECT;
	
}

