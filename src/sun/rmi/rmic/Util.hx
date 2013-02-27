package sun.rmi.rmic;
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
/*
* Licensed Materials - Property of IBM
* RMI-IIOP v1.0
* Copyright IBM Corp. 1998 1999  All Rights Reserved
*
*/
extern class Util implements sun.rmi.rmic.Constants
{
	/**
	* Return the directory that should be used for output for a given
	* class.
	* @param theClass The fully qualified name of the class.
	* @param rootDir The directory to use as the root of the
	* package heirarchy.  May be null, in which case the current
	* working directory is used as the root.
	*/
	@:overload public static function getOutputDirectoryFor(theClass : sun.tools.java.Identifier, rootDir : java.io.File, env : sun.rmi.rmic.BatchEnvironment) : java.io.File;
	
	
}
