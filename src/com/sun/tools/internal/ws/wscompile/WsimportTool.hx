package com.sun.tools.internal.ws.wscompile;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class WsimportTool
{
	@:overload @:public public function new(out : java.io.OutputStream) : Void;
	
	@:overload @:public public function new(logStream : java.io.OutputStream, container : com.sun.xml.internal.ws.api.server.Container) : Void;
	
	@:overload @:public public function run(args : java.NativeArray<String>) : Bool;
	
	/*
	private void jarArtifacts() throws IOException {
	File zipFile = new File(options.clientjar);
	if(!zipFile.isAbsolute()) {
	zipFile = new File(options.destDir, options.clientjar);
	}

	if (zipFile.exists()) {
	//TODO
	}
	FileOutputStream fos = null;

	fos = new FileOutputStream(zipFile);
	JarOutputStream jos = new JarOutputStream(fos);
	addFileToJar(jos, options.destDir, "");
	jos.close();
	}

	private void addFileToJar(JarOutputStream jos, File file, String name) throws IOException {
	if(file.isDirectory()) {
	for(File f: file.listFiles()) {
	String entryName = name.equals("")?f.getName():name+"/"+f.getName();
	addFileToJar(jos,f,entryName);
	}
	} else {
	if(name.equals(options.clientjar)) {
	return;
	}
	BufferedInputStream bis = new BufferedInputStream(
	new FileInputStream(file));
	JarEntry entry = new JarEntry(name);
	jos.putNextEntry(entry);
	int bytesRead;
	byte[] buffer = new byte[1024];
	while ((bytesRead = bis.read(buffer)) != -1) {
	jos.write(buffer, 0, bytesRead);
	}
	bis.close();
	}
	}
	*/
	@:overload @:public public function setEntityResolver(resolver : org.xml.sax.EntityResolver) : Void;
	
	@:overload @:protected private function compileGeneratedClasses(receiver : com.sun.tools.internal.ws.wscompile.ErrorReceiver, listener : com.sun.tools.internal.ws.wscompile.WsimportListener) : Bool;
	
	@:overload @:protected private function usage(options : com.sun.tools.internal.ws.wscompile.Options) : Void;
	
	
}
