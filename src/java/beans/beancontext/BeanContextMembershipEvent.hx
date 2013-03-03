package java.beans.beancontext;
/*
* Copyright (c) 1997, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class BeanContextMembershipEvent extends java.beans.beancontext.BeanContextEvent
{
	/**
	* Contruct a BeanContextMembershipEvent
	*
	* @param bc        The BeanContext source
	* @param changes   The Children affected
	* @throws NullPointerException if <CODE>changes</CODE> is <CODE>null</CODE>
	*/
	@:overload @:public public function new(bc : java.beans.beancontext.BeanContext, changes : java.util.Collection<Dynamic>) : Void;
	
	/**
	* Contruct a BeanContextMembershipEvent
	*
	* @param bc        The BeanContext source
	* @param changes   The Children effected
	* @exception       NullPointerException if changes associated with this
	*                  event are null.
	*/
	@:overload @:public public function new(bc : java.beans.beancontext.BeanContext, changes : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Gets the number of children affected by the notification.
	* @return the number of children affected by the notification
	*/
	@:overload @:public public function size() : Int;
	
	/**
	* Is the child specified affected by the event?
	* @return <code>true</code> if affected, <code>false</code>
	* if not
	*/
	@:overload @:public public function contains(child : Dynamic) : Bool;
	
	/**
	* Gets the array of children affected by this event.
	* @return the array of children affected
	*/
	@:overload @:public public function toArray() : java.NativeArray<Dynamic>;
	
	/**
	* Gets the array of children affected by this event.
	* @return the array of children effected
	*/
	@:overload @:public public function iterator() : java.util.Iterator<Dynamic>;
	
	/**
	* The list of children affected by this
	* event notification.
	*/
	@:protected private var children : java.util.Collection<Dynamic>;
	
	
}
