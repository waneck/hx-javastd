package java.security.cert;
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
/**
* A specification of <code>CertStore</code> parameters.
* <p>
* The purpose of this interface is to group (and provide type safety for)
* all <code>CertStore</code> parameter specifications. All
* <code>CertStore</code> parameter specifications must implement this
* interface.
* <p>
* Typically, a <code>CertStoreParameters</code> object is passed as a parameter
* to one of the {@link CertStore#getInstance CertStore.getInstance} methods.
* The <code>getInstance</code> method returns a <code>CertStore</code> that
* is used for retrieving <code>Certificate</code>s and <code>CRL</code>s. The
* <code>CertStore</code> that is returned is initialized with the specified
* parameters. The type of parameters needed may vary between different types
* of <code>CertStore</code>s.
*
* @see CertStore#getInstance
*
* @since       1.4
* @author      Steve Hanna
*/
@:require(java4) extern interface CertStoreParameters extends java.lang.Cloneable
{
	
}
