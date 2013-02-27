package sun.management;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface HotspotCompilationMBean
{
	/**
	* Returns the number of compiler threads.
	*
	* @return the number of compiler threads.
	*/
	@:overload public function getCompilerThreadCount() : Int;
	
	/**
	* Returns the statistic of all compiler threads.
	*
	* @return a list of {@link CompilerThreadStat} object containing
	* the statistic of a compiler thread.
	*
	*/
	@:overload public function getCompilerThreadStats() : java.util.List<sun.management.CompilerThreadStat>;
	
	/**
	* Returns the total number of compiles.
	*
	* @return the total number of compiles.
	*/
	@:overload public function getTotalCompileCount() : haxe.Int64;
	
	/**
	* Returns the number of bailout compiles.
	*
	* @return the number of bailout compiles.
	*/
	@:overload public function getBailoutCompileCount() : haxe.Int64;
	
	/**
	* Returns the number of invalidated compiles.
	*
	* @return the number of invalidated compiles.
	*/
	@:overload public function getInvalidatedCompileCount() : haxe.Int64;
	
	/**
	* Returns the method information of the last compiled method.
	*
	* @return a {@link MethodInfo} of the last compiled method.
	*/
	@:overload public function getLastCompile() : sun.management.MethodInfo;
	
	/**
	* Returns the method information of the last failed compile.
	*
	* @return a {@link MethodInfo} of the last failed compile.
	*/
	@:overload public function getFailedCompile() : sun.management.MethodInfo;
	
	/**
	* Returns the method information of the last invalidated compile.
	*
	* @return a {@link MethodInfo} of the last invalidated compile.
	*/
	@:overload public function getInvalidatedCompile() : sun.management.MethodInfo;
	
	/**
	* Returns the number of bytes for the code of the
	* compiled methods.
	*
	* @return the number of bytes for the code of the compiled methods.
	*/
	@:overload public function getCompiledMethodCodeSize() : haxe.Int64;
	
	/**
	* Returns the number of bytes occupied by the compiled methods.
	*
	* @return the number of bytes occupied by the compiled methods.
	*/
	@:overload public function getCompiledMethodSize() : haxe.Int64;
	
	/**
	* Returns a list of internal counters maintained in the Java
	* virtual machine for the compilation system.
	*
	* @return a list of internal counters maintained in the VM
	* for the compilation system.
	*/
	@:overload public function getInternalCompilerCounters() : java.util.List<sun.management.counter.Counter>;
	
	
}
