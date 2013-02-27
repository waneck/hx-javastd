package javax.xml.stream.events;
/*
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
* Copyright (c) 2009 by Oracle Corporation. All Rights Reserved.
*/
/**
* An interface that describes the data found in processing instructions
*
* @version 1.0
* @author Copyright (c) 2009 by Oracle Corporation. All Rights Reserved.
* @since 1.6
*/
@:require(java6) extern interface ProcessingInstruction extends javax.xml.stream.events.XMLEvent
{
	/**
	* The target section of the processing instruction
	*
	* @return the String value of the PI or null
	*/
	@:overload public function getTarget() : String;
	
	/**
	* The data section of the processing instruction
	*
	* @return the String value of the PI's data or null
	*/
	@:overload public function getData() : String;
	
	
}
