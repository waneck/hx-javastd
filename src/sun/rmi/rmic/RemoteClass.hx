package sun.rmi.rmic;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class RemoteClass implements sun.rmi.rmic.RMIConstants
{
	/**
	* Create a RemoteClass object representing the remote meta-information
	* of the given class.
	*
	* Returns true if successful.  If the class is not a properly formed
	* remote implementation class or if some other error occurs, the
	* return value will be null, and errors will have been reported to
	* the supplied BatchEnvironment.
	*/
	@:overload @:public @:static public static function forClass(env : sun.rmi.rmic.BatchEnvironment, implClassDef : sun.tools.java.ClassDefinition) : sun.rmi.rmic.RemoteClass;
	
	/**
	* Return the ClassDefinition for this class.
	*/
	@:overload @:public public function getClassDefinition() : sun.tools.java.ClassDefinition;
	
	/**
	* Return the name of the class represented by this object.
	*/
	@:overload @:public public function getName() : sun.tools.java.Identifier;
	
	/**
	* Return an array of ClassDefinitions representing all of the remote
	* interfaces implemented by this class.
	*
	* A remote interface is any interface that extends Remote,
	* directly or indirectly.  The remote interfaces of a class
	* are the interfaces directly listed in either the class's
	* "implements" clause, or the "implements" clause of any
	* of its superclasses, that are remote interfaces.
	*
	* The order of the array returned is arbitrary, and some elements
	* may be superfluous (i.e., superinterfaces of other interfaces
	* in the array).
	*/
	@:overload @:public public function getRemoteInterfaces() : java.NativeArray<sun.tools.java.ClassDefinition>;
	
	/**
	* Return an array of RemoteClass.Method objects representing all of
	* the remote methods implemented by this class, i.e. all of the
	* methods in the class's remote interfaces.
	*
	* The methods in the array are ordered according to the comparision
	* of the strings consisting of their method name followed by their
	* type signature, so each method's index in the array corresponds
	* to its "operation number" in the JDK 1.1 version of the
	* stub/skeleton protocol.
	*/
	@:overload @:public public function getRemoteMethods() : java.NativeArray<sun.rmi.rmic.RemoteClass.RemoteClass_Method>;
	
	/**
	* Return the "interface hash" used to match a stub/skeleton pair for
	* this class in the JDK 1.1 version of the stub/skeleton protocol.
	*/
	@:overload @:public public function getInterfaceHash() : haxe.Int64;
	
	/**
	* Return string representation of this object, consisting of
	* the string "remote class " followed by the class name.
	*/
	@:overload @:public public function toString() : String;
	
	
}
/**
* A RemoteClass.Method object encapsulates RMI-specific information
* about a particular remote method in the remote implementation class
* represented by the outer instance.
*/
@:native('sun$rmi$rmic$RemoteClass$Method') extern class RemoteClass_Method implements java.lang.Cloneable
{
	/**
	* Return the definition of the actual class member corresponing
	* to this method of a remote interface.
	*
	* REMIND: Can this method be removed?
	*/
	@:overload @:public public function getMemberDefinition() : sun.tools.java.MemberDefinition;
	
	/**
	* Return the name of this method.
	*/
	@:overload @:public public function getName() : sun.tools.java.Identifier;
	
	/**
	* Return the type of this method.
	*/
	@:overload @:public public function getType() : sun.tools.java.Type;
	
	/**
	* Return an array of the exception classes declared to be
	* thrown by this remote method.
	*
	* For methods with the same name and type signature inherited
	* from multiple remote interfaces, the array will contain
	* the set of exceptions declared in all of the interfaces'
	* methods that can be legally thrown in each of them.
	*/
	@:overload @:public public function getExceptions() : java.NativeArray<sun.tools.java.ClassDeclaration>;
	
	/**
	* Return the "method hash" used to identify this remote method
	* in the JDK 1.2 version of the stub protocol.
	*/
	@:overload @:public public function getMethodHash() : haxe.Int64;
	
	/**
	* Return the string representation of this method.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Return the string representation of this method appropriate
	* for the construction of a java.rmi.server.Operation object.
	*/
	@:overload @:public public function getOperationString() : String;
	
	/**
	* Return a string consisting of this method's name followed by
	* its method descriptor, using the Java VM's notation for
	* method descriptors (see section 4.3.3 of The Java Virtual
	* Machine Specification).
	*/
	@:overload @:public public function getNameAndDescriptor() : String;
	
	/**
	* Cloning is supported by returning a shallow copy of this object.
	*/
	@:overload @:protected private function clone() : Dynamic;
	
	
}
