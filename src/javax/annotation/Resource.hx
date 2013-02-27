package javax.annotation;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
* The Resource annotation marks a resource that is needed
* by the application.  This annotation may be applied to an
* application component class, or to fields or methods of the
* component class.  When the annotation is applied to a
* field or method, the container will inject an instance
* of the requested resource into the application component
* when the component is initialized.  If the annotation is
* applied to the component class, the annotation declares a
* resource that the application will look up at runtime. <p>
*
* Even though this annotation is not marked Inherited, deployment
* tools are required to examine all superclasses of any component
* class to discover all uses of this annotation in all superclasses.
* All such annotation instances specify resources that are needed
* by the application component.  Note that this annotation may
* appear on private fields and methods of superclasses; the container
* is required to perform injection in these cases as well.
*
* @since Common Annotations 1.0
*/
@:require(java0) extern interface Resource
{
	
}
