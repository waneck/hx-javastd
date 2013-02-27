package javax.crypto;
/*
* Copyright (c) 1999, 2007, Oracle and/or its affiliates. All rights reserved.
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
* The JCE security manager.
*
* <p>The JCE security manager is responsible for determining the maximum
* allowable cryptographic strength for a given applet/application, for a given
* algorithm, by consulting the configured jurisdiction policy files and
* the cryptographic permissions bundled with the applet/application.
*
* <p>Note that this security manager is never installed, only instantiated.
*
* @author Jan Luehe
*
* @since 1.4
*/
@:require(java4) @:internal extern class JceSecurityManager extends java.lang.SecurityManager.SecurityManager
{
	
}
