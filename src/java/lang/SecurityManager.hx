package java.lang;
/*
* Copyright (c) 1995, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class SecurityManager
{
	/**
	* This field is <code>true</code> if there is a security check in
	* progress; <code>false</code> otherwise.
	*
	* @deprecated This type of security checking is not recommended.
	*  It is recommended that the <code>checkPermission</code>
	*  call be used instead.
	*/
	private var inCheck : Bool;
	
	/**
	* Tests if there is a security check in progress.
	*
	* @return the value of the <code>inCheck</code> field. This field
	*          should contain <code>true</code> if a security check is
	*          in progress,
	*          <code>false</code> otherwise.
	* @see     java.lang.SecurityManager#inCheck
	* @deprecated This type of security checking is not recommended.
	*  It is recommended that the <code>checkPermission</code>
	*  call be used instead.
	*/
	@:overload public function getInCheck() : Bool;
	
	/**
	* Constructs a new <code>SecurityManager</code>.
	*
	* <p> If there is a security manager already installed, this method first
	* calls the security manager's <code>checkPermission</code> method
	* with the <code>RuntimePermission("createSecurityManager")</code>
	* permission to ensure the calling thread has permission to create a new
	* security manager.
	* This may result in throwing a <code>SecurityException</code>.
	*
	* @exception  java.lang.SecurityException if a security manager already
	*             exists and its <code>checkPermission</code> method
	*             doesn't allow creation of a new security manager.
	* @see        java.lang.System#getSecurityManager()
	* @see        #checkPermission(java.security.Permission) checkPermission
	* @see java.lang.RuntimePermission
	*/
	@:overload public function new() : Void;
	
	/**
	* Returns the current execution stack as an array of classes.
	* <p>
	* The length of the array is the number of methods on the execution
	* stack. The element at index <code>0</code> is the class of the
	* currently executing method, the element at index <code>1</code> is
	* the class of that method's caller, and so on.
	*
	* @return  the execution stack.
	*/
	@:overload @:native private function getClassContext() : java.NativeArray<Class<Dynamic>>;
	
	/**
	* Returns the class loader of the most recently executing method from
	* a class defined using a non-system class loader. A non-system
	* class loader is defined as being a class loader that is not equal to
	* the system class loader (as returned
	* by {@link ClassLoader#getSystemClassLoader}) or one of its ancestors.
	* <p>
	* This method will return
	* <code>null</code> in the following three cases:<p>
	* <ol>
	*   <li>All methods on the execution stack are from classes
	*   defined using the system class loader or one of its ancestors.
	*
	*   <li>All methods on the execution stack up to the first
	*   "privileged" caller
	*   (see {@link java.security.AccessController#doPrivileged})
	*   are from classes
	*   defined using the system class loader or one of its ancestors.
	*
	*   <li> A call to <code>checkPermission</code> with
	*   <code>java.security.AllPermission</code> does not
	*   result in a SecurityException.
	*
	* </ol>
	*
	* @return  the class loader of the most recent occurrence on the stack
	*          of a method from a class defined using a non-system class
	*          loader.
	*
	* @deprecated This type of security checking is not recommended.
	*  It is recommended that the <code>checkPermission</code>
	*  call be used instead.
	*
	* @see  java.lang.ClassLoader#getSystemClassLoader() getSystemClassLoader
	* @see  #checkPermission(java.security.Permission) checkPermission
	*/
	@:overload private function currentClassLoader() : java.lang.ClassLoader;
	
	/**
	* Returns the class of the most recently executing method from
	* a class defined using a non-system class loader. A non-system
	* class loader is defined as being a class loader that is not equal to
	* the system class loader (as returned
	* by {@link ClassLoader#getSystemClassLoader}) or one of its ancestors.
	* <p>
	* This method will return
	* <code>null</code> in the following three cases:<p>
	* <ol>
	*   <li>All methods on the execution stack are from classes
	*   defined using the system class loader or one of its ancestors.
	*
	*   <li>All methods on the execution stack up to the first
	*   "privileged" caller
	*   (see {@link java.security.AccessController#doPrivileged})
	*   are from classes
	*   defined using the system class loader or one of its ancestors.
	*
	*   <li> A call to <code>checkPermission</code> with
	*   <code>java.security.AllPermission</code> does not
	*   result in a SecurityException.
	*
	* </ol>
	*
	* @return  the class  of the most recent occurrence on the stack
	*          of a method from a class defined using a non-system class
	*          loader.
	*
	* @deprecated This type of security checking is not recommended.
	*  It is recommended that the <code>checkPermission</code>
	*  call be used instead.
	*
	* @see  java.lang.ClassLoader#getSystemClassLoader() getSystemClassLoader
	* @see  #checkPermission(java.security.Permission) checkPermission
	*/
	@:overload private function currentLoadedClass() : Class<Dynamic>;
	
	/**
	* Returns the stack depth of the specified class.
	*
	* @param   name   the fully qualified name of the class to search for.
	* @return  the depth on the stack frame of the first occurrence of a
	*          method from a class with the specified name;
	*          <code>-1</code> if such a frame cannot be found.
	* @deprecated This type of security checking is not recommended.
	*  It is recommended that the <code>checkPermission</code>
	*  call be used instead.
	*
	*/
	@:overload @:native private function classDepth(name : String) : Int;
	
	/**
	* Returns the stack depth of the most recently executing method
	* from a class defined using a non-system class loader.  A non-system
	* class loader is defined as being a class loader that is not equal to
	* the system class loader (as returned
	* by {@link ClassLoader#getSystemClassLoader}) or one of its ancestors.
	* <p>
	* This method will return
	* -1 in the following three cases:<p>
	* <ol>
	*   <li>All methods on the execution stack are from classes
	*   defined using the system class loader or one of its ancestors.
	*
	*   <li>All methods on the execution stack up to the first
	*   "privileged" caller
	*   (see {@link java.security.AccessController#doPrivileged})
	*   are from classes
	*   defined using the system class loader or one of its ancestors.
	*
	*   <li> A call to <code>checkPermission</code> with
	*   <code>java.security.AllPermission</code> does not
	*   result in a SecurityException.
	*
	* </ol>
	*
	* @return the depth on the stack frame of the most recent occurrence of
	*          a method from a class defined using a non-system class loader.
	*
	* @deprecated This type of security checking is not recommended.
	*  It is recommended that the <code>checkPermission</code>
	*  call be used instead.
	*
	* @see   java.lang.ClassLoader#getSystemClassLoader() getSystemClassLoader
	* @see   #checkPermission(java.security.Permission) checkPermission
	*/
	@:overload private function classLoaderDepth() : Int;
	
	/**
	* Tests if a method from a class with the specified
	*         name is on the execution stack.
	*
	* @param  name   the fully qualified name of the class.
	* @return <code>true</code> if a method from a class with the specified
	*         name is on the execution stack; <code>false</code> otherwise.
	* @deprecated This type of security checking is not recommended.
	*  It is recommended that the <code>checkPermission</code>
	*  call be used instead.
	*/
	@:overload private function inClass(name : String) : Bool;
	
	/**
	* Basically, tests if a method from a class defined using a
	*          class loader is on the execution stack.
	*
	* @return  <code>true</code> if a call to <code>currentClassLoader</code>
	*          has a non-null return value.
	*
	* @deprecated This type of security checking is not recommended.
	*  It is recommended that the <code>checkPermission</code>
	*  call be used instead.
	* @see        #currentClassLoader() currentClassLoader
	*/
	@:overload private function inClassLoader() : Bool;
	
	/**
	* Creates an object that encapsulates the current execution
	* environment. The result of this method is used, for example, by the
	* three-argument <code>checkConnect</code> method and by the
	* two-argument <code>checkRead</code> method.
	* These methods are needed because a trusted method may be called
	* on to read a file or open a socket on behalf of another method.
	* The trusted method needs to determine if the other (possibly
	* untrusted) method would be allowed to perform the operation on its
	* own.
	* <p> The default implementation of this method is to return
	* an <code>AccessControlContext</code> object.
	*
	* @return  an implementation-dependent object that encapsulates
	*          sufficient information about the current execution environment
	*          to perform some security checks later.
	* @see     java.lang.SecurityManager#checkConnect(java.lang.String, int,
	*   java.lang.Object) checkConnect
	* @see     java.lang.SecurityManager#checkRead(java.lang.String,
	*   java.lang.Object) checkRead
	* @see     java.security.AccessControlContext AccessControlContext
	*/
	@:overload public function getSecurityContext() : Dynamic;
	
	/**
	* Throws a <code>SecurityException</code> if the requested
	* access, specified by the given permission, is not permitted based
	* on the security policy currently in effect.
	* <p>
	* This method calls <code>AccessController.checkPermission</code>
	* with the given permission.
	*
	* @param     perm   the requested permission.
	* @exception SecurityException if access is not permitted based on
	*            the current security policy.
	* @exception NullPointerException if the permission argument is
	*            <code>null</code>.
	* @since     1.2
	*/
	@:require(java2) @:overload public function checkPermission(perm : java.security.Permission) : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* specified security context is denied access to the resource
	* specified by the given permission.
	* The context must be a security
	* context returned by a previous call to
	* <code>getSecurityContext</code> and the access control
	* decision is based upon the configured security policy for
	* that security context.
	* <p>
	* If <code>context</code> is an instance of
	* <code>AccessControlContext</code> then the
	* <code>AccessControlContext.checkPermission</code> method is
	* invoked with the specified permission.
	* <p>
	* If <code>context</code> is not an instance of
	* <code>AccessControlContext</code> then a
	* <code>SecurityException</code> is thrown.
	*
	* @param      perm      the specified permission
	* @param      context   a system-dependent security context.
	* @exception  SecurityException  if the specified security context
	*             is not an instance of <code>AccessControlContext</code>
	*             (e.g., is <code>null</code>), or is denied access to the
	*             resource specified by the given permission.
	* @exception  NullPointerException if the permission argument is
	*             <code>null</code>.
	* @see        java.lang.SecurityManager#getSecurityContext()
	* @see java.security.AccessControlContext#checkPermission(java.security.Permission)
	* @since      1.2
	*/
	@:require(java2) @:overload public function checkPermission(perm : java.security.Permission, context : Dynamic) : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not allowed to create a new class loader.
	* <p>
	* This method calls <code>checkPermission</code> with the
	* <code>RuntimePermission("createClassLoader")</code>
	* permission.
	* <p>
	* If you override this method, then you should make a call to
	* <code>super.checkCreateClassLoader</code>
	* at the point the overridden method would normally throw an
	* exception.
	*
	* @exception SecurityException if the calling thread does not
	*             have permission
	*             to create a new class loader.
	* @see        java.lang.ClassLoader#ClassLoader()
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:overload public function checkCreateClassLoader() : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not allowed to modify the thread argument.
	* <p>
	* This method is invoked for the current security manager by the
	* <code>stop</code>, <code>suspend</code>, <code>resume</code>,
	* <code>setPriority</code>, <code>setName</code>, and
	* <code>setDaemon</code> methods of class <code>Thread</code>.
	* <p>
	* If the thread argument is a system thread (belongs to
	* the thread group with a <code>null</code> parent) then
	* this method calls <code>checkPermission</code> with the
	* <code>RuntimePermission("modifyThread")</code> permission.
	* If the thread argument is <i>not</i> a system thread,
	* this method just returns silently.
	* <p>
	* Applications that want a stricter policy should override this
	* method. If this method is overridden, the method that overrides
	* it should additionally check to see if the calling thread has the
	* <code>RuntimePermission("modifyThread")</code> permission, and
	* if so, return silently. This is to ensure that code granted
	* that permission (such as the JDK itself) is allowed to
	* manipulate any thread.
	* <p>
	* If this method is overridden, then
	* <code>super.checkAccess</code> should
	* be called by the first statement in the overridden method, or the
	* equivalent security check should be placed in the overridden method.
	*
	* @param      t   the thread to be checked.
	* @exception  SecurityException  if the calling thread does not have
	*             permission to modify the thread.
	* @exception  NullPointerException if the thread argument is
	*             <code>null</code>.
	* @see        java.lang.Thread#resume() resume
	* @see        java.lang.Thread#setDaemon(boolean) setDaemon
	* @see        java.lang.Thread#setName(java.lang.String) setName
	* @see        java.lang.Thread#setPriority(int) setPriority
	* @see        java.lang.Thread#stop() stop
	* @see        java.lang.Thread#suspend() suspend
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:overload public function checkAccess(t : java.lang.Thread) : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not allowed to modify the thread group argument.
	* <p>
	* This method is invoked for the current security manager when a
	* new child thread or child thread group is created, and by the
	* <code>setDaemon</code>, <code>setMaxPriority</code>,
	* <code>stop</code>, <code>suspend</code>, <code>resume</code>, and
	* <code>destroy</code> methods of class <code>ThreadGroup</code>.
	* <p>
	* If the thread group argument is the system thread group (
	* has a <code>null</code> parent) then
	* this method calls <code>checkPermission</code> with the
	* <code>RuntimePermission("modifyThreadGroup")</code> permission.
	* If the thread group argument is <i>not</i> the system thread group,
	* this method just returns silently.
	* <p>
	* Applications that want a stricter policy should override this
	* method. If this method is overridden, the method that overrides
	* it should additionally check to see if the calling thread has the
	* <code>RuntimePermission("modifyThreadGroup")</code> permission, and
	* if so, return silently. This is to ensure that code granted
	* that permission (such as the JDK itself) is allowed to
	* manipulate any thread.
	* <p>
	* If this method is overridden, then
	* <code>super.checkAccess</code> should
	* be called by the first statement in the overridden method, or the
	* equivalent security check should be placed in the overridden method.
	*
	* @param      g   the thread group to be checked.
	* @exception  SecurityException  if the calling thread does not have
	*             permission to modify the thread group.
	* @exception  NullPointerException if the thread group argument is
	*             <code>null</code>.
	* @see        java.lang.ThreadGroup#destroy() destroy
	* @see        java.lang.ThreadGroup#resume() resume
	* @see        java.lang.ThreadGroup#setDaemon(boolean) setDaemon
	* @see        java.lang.ThreadGroup#setMaxPriority(int) setMaxPriority
	* @see        java.lang.ThreadGroup#stop() stop
	* @see        java.lang.ThreadGroup#suspend() suspend
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:overload public function checkAccess(g : java.lang.ThreadGroup) : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not allowed to cause the Java Virtual Machine to
	* halt with the specified status code.
	* <p>
	* This method is invoked for the current security manager by the
	* <code>exit</code> method of class <code>Runtime</code>. A status
	* of <code>0</code> indicates success; other values indicate various
	* errors.
	* <p>
	* This method calls <code>checkPermission</code> with the
	* <code>RuntimePermission("exitVM."+status)</code> permission.
	* <p>
	* If you override this method, then you should make a call to
	* <code>super.checkExit</code>
	* at the point the overridden method would normally throw an
	* exception.
	*
	* @param      status   the exit status.
	* @exception SecurityException if the calling thread does not have
	*              permission to halt the Java Virtual Machine with
	*              the specified status.
	* @see        java.lang.Runtime#exit(int) exit
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:overload public function checkExit(status : Int) : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not allowed to create a subprocess.
	* <p>
	* This method is invoked for the current security manager by the
	* <code>exec</code> methods of class <code>Runtime</code>.
	* <p>
	* This method calls <code>checkPermission</code> with the
	* <code>FilePermission(cmd,"execute")</code> permission
	* if cmd is an absolute path, otherwise it calls
	* <code>checkPermission</code> with
	* <code>FilePermission("&lt;&lt;ALL FILES&gt;&gt;","execute")</code>.
	* <p>
	* If you override this method, then you should make a call to
	* <code>super.checkExec</code>
	* at the point the overridden method would normally throw an
	* exception.
	*
	* @param      cmd   the specified system command.
	* @exception  SecurityException if the calling thread does not have
	*             permission to create a subprocess.
	* @exception  NullPointerException if the <code>cmd</code> argument is
	*             <code>null</code>.
	* @see     java.lang.Runtime#exec(java.lang.String)
	* @see     java.lang.Runtime#exec(java.lang.String, java.lang.String[])
	* @see     java.lang.Runtime#exec(java.lang.String[])
	* @see     java.lang.Runtime#exec(java.lang.String[], java.lang.String[])
	* @see     #checkPermission(java.security.Permission) checkPermission
	*/
	@:overload public function checkExec(cmd : String) : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not allowed to dynamic link the library code
	* specified by the string argument file. The argument is either a
	* simple library name or a complete filename.
	* <p>
	* This method is invoked for the current security manager by
	* methods <code>load</code> and <code>loadLibrary</code> of class
	* <code>Runtime</code>.
	* <p>
	* This method calls <code>checkPermission</code> with the
	* <code>RuntimePermission("loadLibrary."+lib)</code> permission.
	* <p>
	* If you override this method, then you should make a call to
	* <code>super.checkLink</code>
	* at the point the overridden method would normally throw an
	* exception.
	*
	* @param      lib   the name of the library.
	* @exception  SecurityException if the calling thread does not have
	*             permission to dynamically link the library.
	* @exception  NullPointerException if the <code>lib</code> argument is
	*             <code>null</code>.
	* @see        java.lang.Runtime#load(java.lang.String)
	* @see        java.lang.Runtime#loadLibrary(java.lang.String)
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:overload public function checkLink(lib : String) : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not allowed to read from the specified file
	* descriptor.
	* <p>
	* This method calls <code>checkPermission</code> with the
	* <code>RuntimePermission("readFileDescriptor")</code>
	* permission.
	* <p>
	* If you override this method, then you should make a call to
	* <code>super.checkRead</code>
	* at the point the overridden method would normally throw an
	* exception.
	*
	* @param      fd   the system-dependent file descriptor.
	* @exception  SecurityException  if the calling thread does not have
	*             permission to access the specified file descriptor.
	* @exception  NullPointerException if the file descriptor argument is
	*             <code>null</code>.
	* @see        java.io.FileDescriptor
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:overload public function checkRead(fd : java.io.FileDescriptor) : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not allowed to read the file specified by the
	* string argument.
	* <p>
	* This method calls <code>checkPermission</code> with the
	* <code>FilePermission(file,"read")</code> permission.
	* <p>
	* If you override this method, then you should make a call to
	* <code>super.checkRead</code>
	* at the point the overridden method would normally throw an
	* exception.
	*
	* @param      file   the system-dependent file name.
	* @exception  SecurityException if the calling thread does not have
	*             permission to access the specified file.
	* @exception  NullPointerException if the <code>file</code> argument is
	*             <code>null</code>.
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:overload public function checkRead(file : String) : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* specified security context is not allowed to read the file
	* specified by the string argument. The context must be a security
	* context returned by a previous call to
	* <code>getSecurityContext</code>.
	* <p> If <code>context</code> is an instance of
	* <code>AccessControlContext</code> then the
	* <code>AccessControlContext.checkPermission</code> method will
	* be invoked with the <code>FilePermission(file,"read")</code> permission.
	* <p> If <code>context</code> is not an instance of
	* <code>AccessControlContext</code> then a
	* <code>SecurityException</code> is thrown.
	* <p>
	* If you override this method, then you should make a call to
	* <code>super.checkRead</code>
	* at the point the overridden method would normally throw an
	* exception.
	*
	* @param      file      the system-dependent filename.
	* @param      context   a system-dependent security context.
	* @exception  SecurityException  if the specified security context
	*             is not an instance of <code>AccessControlContext</code>
	*             (e.g., is <code>null</code>), or does not have permission
	*             to read the specified file.
	* @exception  NullPointerException if the <code>file</code> argument is
	*             <code>null</code>.
	* @see        java.lang.SecurityManager#getSecurityContext()
	* @see        java.security.AccessControlContext#checkPermission(java.security.Permission)
	*/
	@:overload public function checkRead(file : String, context : Dynamic) : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not allowed to write to the specified file
	* descriptor.
	* <p>
	* This method calls <code>checkPermission</code> with the
	* <code>RuntimePermission("writeFileDescriptor")</code>
	* permission.
	* <p>
	* If you override this method, then you should make a call to
	* <code>super.checkWrite</code>
	* at the point the overridden method would normally throw an
	* exception.
	*
	* @param      fd   the system-dependent file descriptor.
	* @exception SecurityException  if the calling thread does not have
	*             permission to access the specified file descriptor.
	* @exception  NullPointerException if the file descriptor argument is
	*             <code>null</code>.
	* @see        java.io.FileDescriptor
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:overload public function checkWrite(fd : java.io.FileDescriptor) : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not allowed to write to the file specified by
	* the string argument.
	* <p>
	* This method calls <code>checkPermission</code> with the
	* <code>FilePermission(file,"write")</code> permission.
	* <p>
	* If you override this method, then you should make a call to
	* <code>super.checkWrite</code>
	* at the point the overridden method would normally throw an
	* exception.
	*
	* @param      file   the system-dependent filename.
	* @exception  SecurityException  if the calling thread does not
	*             have permission to access the specified file.
	* @exception  NullPointerException if the <code>file</code> argument is
	*             <code>null</code>.
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:overload public function checkWrite(file : String) : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not allowed to delete the specified file.
	* <p>
	* This method is invoked for the current security manager by the
	* <code>delete</code> method of class <code>File</code>.
	* <p>
	* This method calls <code>checkPermission</code> with the
	* <code>FilePermission(file,"delete")</code> permission.
	* <p>
	* If you override this method, then you should make a call to
	* <code>super.checkDelete</code>
	* at the point the overridden method would normally throw an
	* exception.
	*
	* @param      file   the system-dependent filename.
	* @exception  SecurityException if the calling thread does not
	*             have permission to delete the file.
	* @exception  NullPointerException if the <code>file</code> argument is
	*             <code>null</code>.
	* @see        java.io.File#delete()
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:overload public function checkDelete(file : String) : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not allowed to open a socket connection to the
	* specified host and port number.
	* <p>
	* A port number of <code>-1</code> indicates that the calling
	* method is attempting to determine the IP address of the specified
	* host name.
	* <p>
	* This method calls <code>checkPermission</code> with the
	* <code>SocketPermission(host+":"+port,"connect")</code> permission if
	* the port is not equal to -1. If the port is equal to -1, then
	* it calls <code>checkPermission</code> with the
	* <code>SocketPermission(host,"resolve")</code> permission.
	* <p>
	* If you override this method, then you should make a call to
	* <code>super.checkConnect</code>
	* at the point the overridden method would normally throw an
	* exception.
	*
	* @param      host   the host name port to connect to.
	* @param      port   the protocol port to connect to.
	* @exception  SecurityException  if the calling thread does not have
	*             permission to open a socket connection to the specified
	*               <code>host</code> and <code>port</code>.
	* @exception  NullPointerException if the <code>host</code> argument is
	*             <code>null</code>.
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:overload public function checkConnect(host : String, port : Int) : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* specified security context is not allowed to open a socket
	* connection to the specified host and port number.
	* <p>
	* A port number of <code>-1</code> indicates that the calling
	* method is attempting to determine the IP address of the specified
	* host name.
	* <p> If <code>context</code> is not an instance of
	* <code>AccessControlContext</code> then a
	* <code>SecurityException</code> is thrown.
	* <p>
	* Otherwise, the port number is checked. If it is not equal
	* to -1, the <code>context</code>'s <code>checkPermission</code>
	* method is called with a
	* <code>SocketPermission(host+":"+port,"connect")</code> permission.
	* If the port is equal to -1, then
	* the <code>context</code>'s <code>checkPermission</code> method
	* is called with a
	* <code>SocketPermission(host,"resolve")</code> permission.
	* <p>
	* If you override this method, then you should make a call to
	* <code>super.checkConnect</code>
	* at the point the overridden method would normally throw an
	* exception.
	*
	* @param      host      the host name port to connect to.
	* @param      port      the protocol port to connect to.
	* @param      context   a system-dependent security context.
	* @exception  SecurityException if the specified security context
	*             is not an instance of <code>AccessControlContext</code>
	*             (e.g., is <code>null</code>), or does not have permission
	*             to open a socket connection to the specified
	*             <code>host</code> and <code>port</code>.
	* @exception  NullPointerException if the <code>host</code> argument is
	*             <code>null</code>.
	* @see        java.lang.SecurityManager#getSecurityContext()
	* @see        java.security.AccessControlContext#checkPermission(java.security.Permission)
	*/
	@:overload public function checkConnect(host : String, port : Int, context : Dynamic) : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not allowed to wait for a connection request on
	* the specified local port number.
	* <p>
	* If port is not 0, this method calls
	* <code>checkPermission</code> with the
	* <code>SocketPermission("localhost:"+port,"listen")</code>.
	* If port is zero, this method calls <code>checkPermission</code>
	* with <code>SocketPermission("localhost:1024-","listen").</code>
	* <p>
	* If you override this method, then you should make a call to
	* <code>super.checkListen</code>
	* at the point the overridden method would normally throw an
	* exception.
	*
	* @param      port   the local port.
	* @exception  SecurityException  if the calling thread does not have
	*             permission to listen on the specified port.
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:overload public function checkListen(port : Int) : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not permitted to accept a socket connection from
	* the specified host and port number.
	* <p>
	* This method is invoked for the current security manager by the
	* <code>accept</code> method of class <code>ServerSocket</code>.
	* <p>
	* This method calls <code>checkPermission</code> with the
	* <code>SocketPermission(host+":"+port,"accept")</code> permission.
	* <p>
	* If you override this method, then you should make a call to
	* <code>super.checkAccept</code>
	* at the point the overridden method would normally throw an
	* exception.
	*
	* @param      host   the host name of the socket connection.
	* @param      port   the port number of the socket connection.
	* @exception  SecurityException  if the calling thread does not have
	*             permission to accept the connection.
	* @exception  NullPointerException if the <code>host</code> argument is
	*             <code>null</code>.
	* @see        java.net.ServerSocket#accept()
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:overload public function checkAccept(host : String, port : Int) : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not allowed to use
	* (join/leave/send/receive) IP multicast.
	* <p>
	* This method calls <code>checkPermission</code> with the
	* <code>java.net.SocketPermission(maddr.getHostAddress(),
	* "accept,connect")</code> permission.
	* <p>
	* If you override this method, then you should make a call to
	* <code>super.checkMulticast</code>
	* at the point the overridden method would normally throw an
	* exception.
	*
	* @param      maddr  Internet group address to be used.
	* @exception  SecurityException  if the calling thread is not allowed to
	*  use (join/leave/send/receive) IP multicast.
	* @exception  NullPointerException if the address argument is
	*             <code>null</code>.
	* @since      JDK1.1
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:require(java1) @:overload public function checkMulticast(maddr : java.net.InetAddress) : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not allowed to use
	* (join/leave/send/receive) IP multicast.
	* <p>
	* This method calls <code>checkPermission</code> with the
	* <code>java.net.SocketPermission(maddr.getHostAddress(),
	* "accept,connect")</code> permission.
	* <p>
	* If you override this method, then you should make a call to
	* <code>super.checkMulticast</code>
	* at the point the overridden method would normally throw an
	* exception.
	*
	* @param      maddr  Internet group address to be used.
	* @param      ttl        value in use, if it is multicast send.
	* Note: this particular implementation does not use the ttl
	* parameter.
	* @exception  SecurityException  if the calling thread is not allowed to
	*  use (join/leave/send/receive) IP multicast.
	* @exception  NullPointerException if the address argument is
	*             <code>null</code>.
	* @since      JDK1.1
	* @deprecated Use #checkPermission(java.security.Permission) instead
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:require(java1) @:overload public function checkMulticast(maddr : java.net.InetAddress, ttl : java.StdTypes.Int8) : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not allowed to access or modify the system
	* properties.
	* <p>
	* This method is used by the <code>getProperties</code> and
	* <code>setProperties</code> methods of class <code>System</code>.
	* <p>
	* This method calls <code>checkPermission</code> with the
	* <code>PropertyPermission("*", "read,write")</code> permission.
	* <p>
	* If you override this method, then you should make a call to
	* <code>super.checkPropertiesAccess</code>
	* at the point the overridden method would normally throw an
	* exception.
	* <p>
	*
	* @exception  SecurityException  if the calling thread does not have
	*             permission to access or modify the system properties.
	* @see        java.lang.System#getProperties()
	* @see        java.lang.System#setProperties(java.util.Properties)
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:overload public function checkPropertiesAccess() : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not allowed to access the system property with
	* the specified <code>key</code> name.
	* <p>
	* This method is used by the <code>getProperty</code> method of
	* class <code>System</code>.
	* <p>
	* This method calls <code>checkPermission</code> with the
	* <code>PropertyPermission(key, "read")</code> permission.
	* <p>
	* <p>
	* If you override this method, then you should make a call to
	* <code>super.checkPropertyAccess</code>
	* at the point the overridden method would normally throw an
	* exception.
	*
	* @param      key   a system property key.
	*
	* @exception  SecurityException  if the calling thread does not have
	*             permission to access the specified system property.
	* @exception  NullPointerException if the <code>key</code> argument is
	*             <code>null</code>.
	* @exception  IllegalArgumentException if <code>key</code> is empty.
	*
	* @see        java.lang.System#getProperty(java.lang.String)
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:overload public function checkPropertyAccess(key : String) : Void;
	
	/**
	* Returns <code>false</code> if the calling
	* thread is not trusted to bring up the top-level window indicated
	* by the <code>window</code> argument. In this case, the caller can
	* still decide to show the window, but the window should include
	* some sort of visual warning. If the method returns
	* <code>true</code>, then the window can be shown without any
	* special restrictions.
	* <p>
	* See class <code>Window</code> for more information on trusted and
	* untrusted windows.
	* <p>
	* This method calls
	* <code>checkPermission</code> with the
	* <code>AWTPermission("showWindowWithoutWarningBanner")</code> permission,
	* and returns <code>true</code> if a SecurityException is not thrown,
	* otherwise it returns <code>false</code>.
	* <p>
	* If you override this method, then you should make a call to
	* <code>super.checkTopLevelWindow</code>
	* at the point the overridden method would normally return
	* <code>false</code>, and the value of
	* <code>super.checkTopLevelWindow</code> should
	* be returned.
	*
	* @param      window   the new window that is being created.
	* @return     <code>true</code> if the calling thread is trusted to put up
	*             top-level windows; <code>false</code> otherwise.
	* @exception  NullPointerException if the <code>window</code> argument is
	*             <code>null</code>.
	* @see        java.awt.Window
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:overload public function checkTopLevelWindow(window : Dynamic) : Bool;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not allowed to initiate a print job request.
	* <p>
	* This method calls
	* <code>checkPermission</code> with the
	* <code>RuntimePermission("queuePrintJob")</code> permission.
	* <p>
	* If you override this method, then you should make a call to
	* <code>super.checkPrintJobAccess</code>
	* at the point the overridden method would normally throw an
	* exception.
	* <p>
	*
	* @exception  SecurityException  if the calling thread does not have
	*             permission to initiate a print job request.
	* @since   JDK1.1
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:require(java1) @:overload public function checkPrintJobAccess() : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not allowed to access the system clipboard.
	* <p>
	* This method calls <code>checkPermission</code> with the
	* <code>AWTPermission("accessClipboard")</code>
	* permission.
	* <p>
	* If you override this method, then you should make a call to
	* <code>super.checkSystemClipboardAccess</code>
	* at the point the overridden method would normally throw an
	* exception.
	*
	* @since   JDK1.1
	* @exception  SecurityException  if the calling thread does not have
	*             permission to access the system clipboard.
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:require(java1) @:overload public function checkSystemClipboardAccess() : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not allowed to access the AWT event queue.
	* <p>
	* This method calls <code>checkPermission</code> with the
	* <code>AWTPermission("accessEventQueue")</code> permission.
	* <p>
	* If you override this method, then you should make a call to
	* <code>super.checkAwtEventQueueAccess</code>
	* at the point the overridden method would normally throw an
	* exception.
	*
	* @since   JDK1.1
	* @exception  SecurityException  if the calling thread does not have
	*             permission to access the AWT event queue.
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:require(java1) @:overload public function checkAwtEventQueueAccess() : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not allowed to access the package specified by
	* the argument.
	* <p>
	* This method is used by the <code>loadClass</code> method of class
	* loaders.
	* <p>
	* This method first gets a list of
	* restricted packages by obtaining a comma-separated list from
	* a call to
	* <code>java.security.Security.getProperty("package.access")</code>,
	* and checks to see if <code>pkg</code> starts with or equals
	* any of the restricted packages. If it does, then
	* <code>checkPermission</code> gets called with the
	* <code>RuntimePermission("accessClassInPackage."+pkg)</code>
	* permission.
	* <p>
	* If this method is overridden, then
	* <code>super.checkPackageAccess</code> should be called
	* as the first line in the overridden method.
	*
	* @param      pkg   the package name.
	* @exception  SecurityException  if the calling thread does not have
	*             permission to access the specified package.
	* @exception  NullPointerException if the package name argument is
	*             <code>null</code>.
	* @see        java.lang.ClassLoader#loadClass(java.lang.String, boolean)
	*  loadClass
	* @see        java.security.Security#getProperty getProperty
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:overload public function checkPackageAccess(pkg : String) : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not allowed to define classes in the package
	* specified by the argument.
	* <p>
	* This method is used by the <code>loadClass</code> method of some
	* class loaders.
	* <p>
	* This method first gets a list of restricted packages by
	* obtaining a comma-separated list from a call to
	* <code>java.security.Security.getProperty("package.definition")</code>,
	* and checks to see if <code>pkg</code> starts with or equals
	* any of the restricted packages. If it does, then
	* <code>checkPermission</code> gets called with the
	* <code>RuntimePermission("defineClassInPackage."+pkg)</code>
	* permission.
	* <p>
	* If this method is overridden, then
	* <code>super.checkPackageDefinition</code> should be called
	* as the first line in the overridden method.
	*
	* @param      pkg   the package name.
	* @exception  SecurityException  if the calling thread does not have
	*             permission to define classes in the specified package.
	* @see        java.lang.ClassLoader#loadClass(java.lang.String, boolean)
	* @see        java.security.Security#getProperty getProperty
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:overload public function checkPackageDefinition(pkg : String) : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not allowed to set the socket factory used by
	* <code>ServerSocket</code> or <code>Socket</code>, or the stream
	* handler factory used by <code>URL</code>.
	* <p>
	* This method calls <code>checkPermission</code> with the
	* <code>RuntimePermission("setFactory")</code> permission.
	* <p>
	* If you override this method, then you should make a call to
	* <code>super.checkSetFactory</code>
	* at the point the overridden method would normally throw an
	* exception.
	* <p>
	*
	* @exception  SecurityException  if the calling thread does not have
	*             permission to specify a socket factory or a stream
	*             handler factory.
	*
	* @see        java.net.ServerSocket#setSocketFactory(java.net.SocketImplFactory) setSocketFactory
	* @see        java.net.Socket#setSocketImplFactory(java.net.SocketImplFactory) setSocketImplFactory
	* @see        java.net.URL#setURLStreamHandlerFactory(java.net.URLStreamHandlerFactory) setURLStreamHandlerFactory
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:overload public function checkSetFactory() : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not allowed to access members.
	* <p>
	* The default policy is to allow access to PUBLIC members, as well
	* as access to classes that have the same class loader as the caller.
	* In all other cases, this method calls <code>checkPermission</code>
	* with the <code>RuntimePermission("accessDeclaredMembers")
	* </code> permission.
	* <p>
	* If this method is overridden, then a call to
	* <code>super.checkMemberAccess</code> cannot be made,
	* as the default implementation of <code>checkMemberAccess</code>
	* relies on the code being checked being at a stack depth of
	* 4.
	*
	* @param clazz the class that reflection is to be performed on.
	*
	* @param which type of access, PUBLIC or DECLARED.
	*
	* @exception  SecurityException if the caller does not have
	*             permission to access members.
	* @exception  NullPointerException if the <code>clazz</code> argument is
	*             <code>null</code>.
	* @see java.lang.reflect.Member
	* @since JDK1.1
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:require(java1) @:overload public function checkMemberAccess(clazz : Class<Dynamic>, which : Int) : Void;
	
	/**
	* Determines whether the permission with the specified permission target
	* name should be granted or denied.
	*
	* <p> If the requested permission is allowed, this method returns
	* quietly. If denied, a SecurityException is raised.
	*
	* <p> This method creates a <code>SecurityPermission</code> object for
	* the given permission target name and calls <code>checkPermission</code>
	* with it.
	*
	* <p> See the documentation for
	* <code>{@link java.security.SecurityPermission}</code> for
	* a list of possible permission target names.
	*
	* <p> If you override this method, then you should make a call to
	* <code>super.checkSecurityAccess</code>
	* at the point the overridden method would normally throw an
	* exception.
	*
	* @param target the target name of the <code>SecurityPermission</code>.
	*
	* @exception SecurityException if the calling thread does not have
	* permission for the requested access.
	* @exception NullPointerException if <code>target</code> is null.
	* @exception IllegalArgumentException if <code>target</code> is empty.
	*
	* @since   JDK1.1
	* @see        #checkPermission(java.security.Permission) checkPermission
	*/
	@:require(java1) @:overload public function checkSecurityAccess(target : String) : Void;
	
	/**
	* Returns the thread group into which to instantiate any new
	* thread being created at the time this is being called.
	* By default, it returns the thread group of the current
	* thread. This should be overridden by a specific security
	* manager to return the appropriate thread group.
	*
	* @return  ThreadGroup that new threads are instantiated into
	* @since   JDK1.1
	* @see     java.lang.ThreadGroup
	*/
	@:require(java1) @:overload public function getThreadGroup() : java.lang.ThreadGroup;
	
	
}
