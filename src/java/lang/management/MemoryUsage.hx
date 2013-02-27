package java.lang.management;
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
extern class MemoryUsage
{
	/**
	* Constructs a <tt>MemoryUsage</tt> object.
	*
	* @param init      the initial amount of memory in bytes that
	*                  the Java virtual machine allocates;
	*                  or <tt>-1</tt> if undefined.
	* @param used      the amount of used memory in bytes.
	* @param committed the amount of committed memory in bytes.
	* @param max       the maximum amount of memory in bytes that
	*                  can be used; or <tt>-1</tt> if undefined.
	*
	* @throws IllegalArgumentException if
	* <ul>
	* <li> the value of <tt>init</tt> or <tt>max</tt> is negative
	*      but not <tt>-1</tt>; or</li>
	* <li> the value of <tt>used</tt> or <tt>committed</tt> is negative;
	*      or</li>
	* <li> <tt>used</tt> is greater than the value of <tt>committed</tt>;
	*      or</li>
	* <li> <tt>committed</tt> is greater than the value of <tt>max</tt>
	*      <tt>max</tt> if defined.</li>
	* </ul>
	*/
	@:overload public function new(init : haxe.Int64, used : haxe.Int64, committed : haxe.Int64, max : haxe.Int64) : Void;
	
	/**
	* Returns the amount of memory in bytes that the Java virtual machine
	* initially requests from the operating system for memory management.
	* This method returns <tt>-1</tt> if the initial memory size is undefined.
	*
	* @return the initial size of memory in bytes;
	* <tt>-1</tt> if undefined.
	*/
	@:overload public function getInit() : haxe.Int64;
	
	/**
	* Returns the amount of used memory in bytes.
	*
	* @return the amount of used memory in bytes.
	*
	*/
	@:overload public function getUsed() : haxe.Int64;
	
	/**
	* Returns the amount of memory in bytes that is committed for
	* the Java virtual machine to use.  This amount of memory is
	* guaranteed for the Java virtual machine to use.
	*
	* @return the amount of committed memory in bytes.
	*
	*/
	@:overload public function getCommitted() : haxe.Int64;
	
	/**
	* Returns the maximum amount of memory in bytes that can be
	* used for memory management.  This method returns <tt>-1</tt>
	* if the maximum memory size is undefined.
	*
	* <p> This amount of memory is not guaranteed to be available
	* for memory management if it is greater than the amount of
	* committed memory.  The Java virtual machine may fail to allocate
	* memory even if the amount of used memory does not exceed this
	* maximum size.
	*
	* @return the maximum amount of memory in bytes;
	* <tt>-1</tt> if undefined.
	*/
	@:overload public function getMax() : haxe.Int64;
	
	/**
	* Returns a descriptive representation of this memory usage.
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns a <tt>MemoryUsage</tt> object represented by the
	* given <tt>CompositeData</tt>. The given <tt>CompositeData</tt>
	* must contain the following attributes:
	* <p>
	* <blockquote>
	* <table border>
	* <tr>
	*   <th align=left>Attribute Name</th>
	*   <th align=left>Type</th>
	* </tr>
	* <tr>
	*   <td>init</td>
	*   <td><tt>java.lang.Long</tt></td>
	* </tr>
	* <tr>
	*   <td>used</td>
	*   <td><tt>java.lang.Long</tt></td>
	* </tr>
	* <tr>
	*   <td>committed</td>
	*   <td><tt>java.lang.Long</tt></td>
	* </tr>
	* <tr>
	*   <td>max</td>
	*   <td><tt>java.lang.Long</tt></td>
	* </tr>
	* </table>
	* </blockquote>
	*
	* @param cd <tt>CompositeData</tt> representing a <tt>MemoryUsage</tt>
	*
	* @throws IllegalArgumentException if <tt>cd</tt> does not
	*   represent a <tt>MemoryUsage</tt> with the attributes described
	*   above.
	*
	* @return a <tt>MemoryUsage</tt> object represented by <tt>cd</tt>
	*         if <tt>cd</tt> is not <tt>null</tt>;
	*         <tt>null</tt> otherwise.
	*/
	@:overload public static function from(cd : javax.management.openmbean.CompositeData) : MemoryUsage;
	
	
}
