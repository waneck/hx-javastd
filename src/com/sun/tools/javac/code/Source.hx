package com.sun.tools.javac.code;
/*
* Copyright (c) 2002, 2011, Oracle and/or its affiliates. All rights reserved.
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
/** The source language version accepted.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern enum Source
{
	/** 1.2 introduced strictfp. */
	JDK1_2;
	/** 1.3 is the same language as 1.2. */
	JDK1_3;
	/** 1.4 introduced assert. */
	JDK1_4;
	/** 1.5 introduced generics, attributes, foreach, boxing, static import,
	*  covariant return, enums, varargs, et al. */
	JDK1_5;
	/** 1.6 reports encoding problems as errors instead of warnings. */
	JDK1_6;
	/** 1.7 covers the to be determined language features that will be added in JDK 7. */
	JDK1_7;
	
}

