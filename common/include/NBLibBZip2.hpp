/*
	*
	* NBLibBZip2.hpp - NBLibBZip2.cpp header
	*
*/

#pragma once

#include "common.hpp"
#include <bzlib.h>

class NBCOMMON_DLLSPEC NBBZip2 {

	public:
		enum BZip2Error {
			NREG,			// Not a reguar file
			NFND,			// File/Folder not found
		};

		enum Mode {
			READ,			// Read a zip file
			WRITE,			// Write a zip file
		};

		NBBZip2( QString, NBBZip2::Mode mode, QString file = QString() );
		void create();
		void extract();

		static QString fileName;
		static QString bz2FileName;
		static NBBZip2::Mode mode;

	private:
		BZFILE *bz2;
		FILE *bzFile;
		int NBBZip2Error;
};
