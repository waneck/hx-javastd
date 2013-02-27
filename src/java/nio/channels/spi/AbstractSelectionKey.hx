package java.nio.channels.spi;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
* Base implementation class for selection keys.
*
* <p> This class tracks the validity of the key and implements cancellation.
*
* @author Mark Reinhold
* @author JSR-51 Expert Group
* @since 1.4
*/
@:require(java4) extern class AbstractSelectionKey extends java.nio.channels.SelectionKey
{
	/**
	* Initializes a new instance of this class.  </p>
	*/
	@:overload private function new() : Void;
	
	@:overload @:final override public function isValid() : Bool;
	
	/**
	* Cancels this key.
	*
	* <p> If this key has not yet been cancelled then it is added to its
	* selector's cancelled-key set while synchronized on that set.  </p>
	*/
	@:overload @:final override public function cancel() : Void;
	
	
}
