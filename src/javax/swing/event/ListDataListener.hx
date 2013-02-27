package javax.swing.event;
/*
* Copyright (c) 1997, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern interface ListDataListener extends java.util.EventListener
{
	/**
	* Sent after the indices in the index0,index1
	* interval have been inserted in the data model.
	* The new interval includes both index0 and index1.
	*
	* @param e  a <code>ListDataEvent</code> encapsulating the
	*    event information
	*/
	@:overload public function intervalAdded(e : javax.swing.event.ListDataEvent) : Void;
	
	/**
	* Sent after the indices in the index0,index1 interval
	* have been removed from the data model.  The interval
	* includes both index0 and index1.
	*
	* @param e  a <code>ListDataEvent</code> encapsulating the
	*    event information
	*/
	@:overload public function intervalRemoved(e : javax.swing.event.ListDataEvent) : Void;
	
	/**
	* Sent when the contents of the list has changed in a way
	* that's too complex to characterize with the previous
	* methods. For example, this is sent when an item has been
	* replaced. Index0 and index1 bracket the change.
	*
	* @param e  a <code>ListDataEvent</code> encapsulating the
	*    event information
	*/
	@:overload public function contentsChanged(e : javax.swing.event.ListDataEvent) : Void;
	
	
}
