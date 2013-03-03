package sun.security.ssl;
/*
* Copyright (c) 1996, 2012, Oracle and/or its affiliates. All rights reserved.
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
* Handshaker ... processes handshake records from an SSL V3.0
* data stream, handling all the details of the handshake protocol.
*
* Note that the real protocol work is done in two subclasses, the  base
* class just provides the control flow and key generation framework.
*
* @author David Brownell
*/
@:internal extern class Handshaker
{
	
}
/*
* Implement a simple task delegator.
*
* We are currently implementing this as a single delegator, may
* try for parallel tasks later.  Client Authentication could
* benefit from this, where ClientKeyExchange/CertificateVerify
* could be carried out in parallel.
*/
@:native('sun$security$ssl$Handshaker$DelegatedTask') @:internal extern class Handshaker_DelegatedTask<E> implements java.lang.Runnable
{
	@:overload @:public public function run() : Void;
	
	
}
