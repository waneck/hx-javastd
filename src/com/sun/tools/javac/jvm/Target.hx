package com.sun.tools.javac.jvm;
/*
* Copyright (c) 2002, 2010, Oracle and/or its affiliates. All rights reserved.
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
/** The classfile version target.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern enum Target
{
	JDK1_1;
	JDK1_2;
	JDK1_3;
	/** J2SE1.4 = Merlin. */
	JDK1_4;
	/** Support for the JSR14 prototype compiler (targeting 1.4 VMs
	*  augmented with a few support classes).  This is a transitional
	*  option that will not be supported in the product.  */
	JSR14;
	/** The following are undocumented transitional targets that we
	*  had used to test VM fixes in update releases.  We do not
	*  promise to retain support for them.  */
	JDK1_4_1;
	JDK1_4_2;
	/** Tiger. */
	JDK1_5;
	/** JDK 6. */
	JDK1_6;
	/** JDK 7. */
	JDK1_7;
	
}

