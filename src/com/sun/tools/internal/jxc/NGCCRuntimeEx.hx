package com.sun.tools.internal.jxc;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class NGCCRuntimeEx extends com.sun.tools.internal.jxc.gen.config.NGCCRuntime
{
	@:overload @:public public function new(errorHandler : org.xml.sax.ErrorHandler) : Void;
	
	/**
	*  This will check if the baseDir provided by the user
	*  in the config file exists. If not it throws an error
	* @param baseDir
	*    The baseDir attribute passed by the user in the xml config file as a path
	* @return
	*     The file representation of the path name
	*/
	@:overload @:public public function getBaseDir(baseDir : String) : java.io.File;
	
	/**
	* This takes the include list provided by the user in the config file
	* It converts the user values to {@link Pattern}
	* @param includeContent
	*        The include list specified by the user
	* @return
	*        A list of regular expression patterns {@link Pattern}
	*/
	@:overload @:public public function getIncludePatterns(includeContent : java.util.List<Dynamic>) : java.util.List<java.util.regex.Pattern>;
	
	/**
	* This takes the exclude list provided by the user in the config file
	* It converts the user values to {@link Pattern}
	* @param excludeContent
	*        The exclude list specified by the user
	* @return
	*        A list of regular expression patterns {@link Pattern}
	*/
	@:overload @:public public function getExcludePatterns(excludeContent : java.util.List<Dynamic>) : java.util.List<Dynamic>;
	
	@:overload @:protected override private function unexpectedX(token : String) : Void;
	
	
}
