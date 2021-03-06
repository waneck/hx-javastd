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
* Implements the SPNEGO NegTokenInit token
* as specified in RFC 2478
*
* NegTokenInit ::= SEQUENCE {
*      mechTypes       [0] MechTypeList  OPTIONAL,
*      reqFlags        [1] ContextFlags  OPTIONAL,
*      mechToken       [2] OCTET STRING  OPTIONAL,
*      mechListMIC     [3] OCTET STRING  OPTIONAL
* }
*
* MechTypeList ::= SEQUENCE OF MechType
*
* MechType::= OBJECT IDENTIFIER
*
* ContextFlags ::= BIT STRING {
*      delegFlag       (0),
*      mutualFlag      (1),
*      replayFlag      (2),
*      sequenceFlag    (3),
*      anonFlag        (4),
*      confFlag        (5),
*      integFlag       (6)
* }
*
* @author Seema Malkani
* @since 1.6
*/
@:require(java6) extern class NegTokenInit extends sun.security.jgss.spnego.SpNegoToken
{
	@:overload @:public public function new(_in : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function getMechTypeList() : java.NativeArray<org.ietf.jgss.Oid>;
	
	@:overload @:public public function getMechToken() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
