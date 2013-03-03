package com.sun.tools.javac.api;
/*
* Copyright (c) 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class ClientCodeWrapper
{
	@:overload @:public @:static public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.javac.api.ClientCodeWrapper;
	
	@:overload @:protected private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	@:overload @:public public function wrap(fm : javax.tools.JavaFileManager) : javax.tools.JavaFileManager;
	
	@:overload @:public public function wrap(fo : javax.tools.FileObject) : javax.tools.FileObject;
	
	@:overload @:public public function wrap(fo : javax.tools.JavaFileObject) : javax.tools.JavaFileObject;
	
	@:overload @:public public function wrapJavaFileObjects(list : java.lang.Iterable<javax.tools.JavaFileObject>) : java.lang.Iterable<javax.tools.JavaFileObject>;
	
	@:overload @:protected private function isTrusted(o : Dynamic) : Bool;
	
	
}
/**
*  Wrap objects to enable unchecked exceptions to be caught and handled.
*
*  For each method, exceptions are handled as follows:
*  <ul>
*  <li>Checked exceptions are left alone and propogate upwards in the
*      obvious way, since they are an expected aspect of the method's
*      specification.
*  <li>Unchecked exceptions which have already been caught and wrapped in
*      ClientCodeException are left alone to continue propogating upwards.
*  <li>All other unchecked exceptions (i.e. subtypes of RuntimeException
*      and Error) and caught, and rethrown as a ClientCodeException with
*      its cause set to the original exception.
*  </ul>
*
*  The intent is that ClientCodeException can be caught at an appropriate point
*  in the program and can be distinguished from any unanticipated unchecked
*  exceptions arising in the main body of the code (i.e. bugs.) When the
*  ClientCodeException has been caught, either a suitable message can be
*  generated, or if appropriate, the original cause can be rethrown.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
@:native('com$sun$tools$javac$api$ClientCodeWrapper$Trusted') extern class ClientCodeWrapper_Trusted
{
	
}
@:native('com$sun$tools$javac$api$ClientCodeWrapper$WrappedJavaFileManager') extern class ClientCodeWrapper_WrappedJavaFileManager implements javax.tools.JavaFileManager
{
	@:protected private var clientJavaFileManager : javax.tools.JavaFileManager;
	
	@:overload @:public public function getClassLoader(location : javax.tools.JavaFileManager.JavaFileManager_Location) : java.lang.ClassLoader;
	
	@:overload @:public public function list(location : javax.tools.JavaFileManager.JavaFileManager_Location, packageName : String, kinds : java.util.Set<javax.tools.JavaFileObject.JavaFileObject_Kind>, recurse : Bool) : java.lang.Iterable<javax.tools.JavaFileObject>;
	
	@:overload @:public public function inferBinaryName(location : javax.tools.JavaFileManager.JavaFileManager_Location, file : javax.tools.JavaFileObject) : String;
	
	@:overload @:public public function isSameFile(a : javax.tools.FileObject, b : javax.tools.FileObject) : Bool;
	
	@:overload @:public public function handleOption(current : String, remaining : java.util.Iterator<String>) : Bool;
	
	@:overload @:public public function hasLocation(location : javax.tools.JavaFileManager.JavaFileManager_Location) : Bool;
	
	@:overload @:public public function getJavaFileForInput(location : javax.tools.JavaFileManager.JavaFileManager_Location, className : String, kind : javax.tools.JavaFileObject.JavaFileObject_Kind) : javax.tools.JavaFileObject;
	
	@:overload @:public public function getJavaFileForOutput(location : javax.tools.JavaFileManager.JavaFileManager_Location, className : String, kind : javax.tools.JavaFileObject.JavaFileObject_Kind, sibling : javax.tools.FileObject) : javax.tools.JavaFileObject;
	
	@:overload @:public public function getFileForInput(location : javax.tools.JavaFileManager.JavaFileManager_Location, packageName : String, relativeName : String) : javax.tools.FileObject;
	
	@:overload @:public public function getFileForOutput(location : javax.tools.JavaFileManager.JavaFileManager_Location, packageName : String, relativeName : String, sibling : javax.tools.FileObject) : javax.tools.FileObject;
	
	@:overload @:public public function flush() : Void;
	
	@:overload @:public public function close() : Void;
	
	@:overload @:public public function isSupportedOption(option : String) : Int;
	
	
}
@:native('com$sun$tools$javac$api$ClientCodeWrapper$WrappedFileObject') extern class ClientCodeWrapper_WrappedFileObject implements javax.tools.FileObject
{
	@:protected private var clientFileObject : javax.tools.FileObject;
	
	@:overload @:public public function toUri() : java.net.URI;
	
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function openInputStream() : java.io.InputStream;
	
	@:overload @:public public function openOutputStream() : java.io.OutputStream;
	
	@:overload @:public public function openReader(ignoreEncodingErrors : Bool) : java.io.Reader;
	
	@:overload @:public public function getCharContent(ignoreEncodingErrors : Bool) : java.lang.CharSequence;
	
	@:overload @:public public function openWriter() : java.io.Writer;
	
	@:overload @:public public function getLastModified() : haxe.Int64;
	
	@:overload @:public public function delete() : Bool;
	
	
}
@:native('com$sun$tools$javac$api$ClientCodeWrapper$WrappedJavaFileObject') extern class ClientCodeWrapper_WrappedJavaFileObject extends com.sun.tools.javac.api.ClientCodeWrapper.ClientCodeWrapper_WrappedFileObject implements javax.tools.JavaFileObject
{
	@:overload @:public public function getKind() : javax.tools.JavaFileObject.JavaFileObject_Kind;
	
	@:overload @:public public function isNameCompatible(simpleName : String, kind : javax.tools.JavaFileObject.JavaFileObject_Kind) : Bool;
	
	@:overload @:public public function getNestingKind() : javax.lang.model.element.NestingKind;
	
	@:overload @:public public function getAccessLevel() : javax.lang.model.element.Modifier;
	
	
}
@:native('com$sun$tools$javac$api$ClientCodeWrapper$WrappedDiagnosticListener') extern class ClientCodeWrapper_WrappedDiagnosticListener<T> implements javax.tools.DiagnosticListener<T>
{
	/*super JavaFileObject*/
	@:protected private var clientDiagnosticListener : javax.tools.DiagnosticListener<T>;
	
	@:overload @:public public function report(diagnostic : javax.tools.Diagnostic<T>) : Void;
	
	
}
@:native('com$sun$tools$javac$api$ClientCodeWrapper$DiagnosticSourceUnwrapper') extern class ClientCodeWrapper_DiagnosticSourceUnwrapper implements javax.tools.Diagnostic<javax.tools.JavaFileObject>
{
	@:public @:final public var d(default, null) : com.sun.tools.javac.util.JCDiagnostic;
	
	@:overload @:public public function getKind() : javax.tools.Diagnostic.Diagnostic_Kind;
	
	@:overload @:public public function getSource() : javax.tools.JavaFileObject;
	
	@:overload @:public public function getPosition() : haxe.Int64;
	
	@:overload @:public public function getStartPosition() : haxe.Int64;
	
	@:overload @:public public function getEndPosition() : haxe.Int64;
	
	@:overload @:public public function getLineNumber() : haxe.Int64;
	
	@:overload @:public public function getColumnNumber() : haxe.Int64;
	
	@:overload @:public public function getCode() : String;
	
	@:overload @:public public function getMessage(locale : java.util.Locale) : String;
	
	@:overload @:public public function toString() : String;
	
	
}
@:native('com$sun$tools$javac$api$ClientCodeWrapper$WrappedTaskListener') extern class ClientCodeWrapper_WrappedTaskListener implements com.sun.source.util.TaskListener
{
	@:protected private var clientTaskListener : com.sun.source.util.TaskListener;
	
	@:overload @:public public function started(ev : com.sun.source.util.TaskEvent) : Void;
	
	@:overload @:public public function finished(ev : com.sun.source.util.TaskEvent) : Void;
	
	
}
