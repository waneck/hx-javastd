package java.beans;
/*
* Copyright (c) 1996, 1998, Oracle and/or its affiliates. All rights reserved.
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
* This is a support class to make it easier for people to provide
* BeanInfo classes.
* <p>
* It defaults to providing "noop" information, and can be selectively
* overriden to provide more explicit information on chosen topics.
* When the introspector sees the "noop" values, it will apply low
* level introspection and design patterns to automatically analyze
* the target bean.
*/
extern class SimpleBeanInfo implements java.beans.BeanInfo
{
	/**
	* Deny knowledge about the class and customizer of the bean.
	* You can override this if you wish to provide explicit info.
	*/
	@:overload public function getBeanDescriptor() : java.beans.BeanDescriptor;
	
	/**
	* Deny knowledge of properties. You can override this
	* if you wish to provide explicit property info.
	*/
	@:overload public function getPropertyDescriptors() : java.NativeArray<java.beans.PropertyDescriptor>;
	
	/**
	* Deny knowledge of a default property. You can override this
	* if you wish to define a default property for the bean.
	*/
	@:overload public function getDefaultPropertyIndex() : Int;
	
	/**
	* Deny knowledge of event sets. You can override this
	* if you wish to provide explicit event set info.
	*/
	@:overload public function getEventSetDescriptors() : java.NativeArray<java.beans.EventSetDescriptor>;
	
	/**
	* Deny knowledge of a default event. You can override this
	* if you wish to define a default event for the bean.
	*/
	@:overload public function getDefaultEventIndex() : Int;
	
	/**
	* Deny knowledge of methods. You can override this
	* if you wish to provide explicit method info.
	*/
	@:overload public function getMethodDescriptors() : java.NativeArray<java.beans.MethodDescriptor>;
	
	/**
	* Claim there are no other relevant BeanInfo objects.  You
	* may override this if you want to (for example) return a
	* BeanInfo for a base class.
	*/
	@:overload public function getAdditionalBeanInfo() : java.NativeArray<java.beans.BeanInfo>;
	
	/**
	* Claim there are no icons available.  You can override
	* this if you want to provide icons for your bean.
	*/
	@:overload public function getIcon(iconKind : Int) : java.awt.Image;
	
	/**
	* This is a utility method to help in loading icon images.
	* It takes the name of a resource file associated with the
	* current object's class file and loads an image object
	* from that file.  Typically images will be GIFs.
	* <p>
	* @param resourceName  A pathname relative to the directory
	*          holding the class file of the current class.  For example,
	*          "wombat.gif".
	* @return  an image object.  May be null if the load failed.
	*/
	@:overload public function loadImage(resourceName : String) : java.awt.Image;
	
	
}