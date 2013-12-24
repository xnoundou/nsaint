; ModuleID = 'tests/mongoose.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon.0 = type { i8*, i64, i8* }
%struct.ssl_func = type { i8*, void ()* }
%struct.mg_context = type { i32, %struct.ssl_ctx_st*, [24 x i8*], %struct.mg_callbacks, i8*, %struct.socket*, i32, i32, %union.pthread_mutex_t, %union.pthread_cond_t, [20 x %struct.socket], i32, i32, %union.pthread_cond_t, %union.pthread_cond_t }
%struct.ssl_ctx_st = type opaque
%struct.mg_callbacks = type { i32 (%struct.mg_connection*)*, void (%struct.mg_connection*, i32)*, i32 (%struct.mg_connection*, i8*)*, i32 (i8*, i8*)*, i32 (%struct.mg_connection*)*, void (%struct.mg_connection*)*, i32 (%struct.mg_connection*, i32, i8*, i64)*, i8* (%struct.mg_connection*, i8*, i64*)*, void (%struct.mg_connection*, i8*)*, void (%struct.mg_connection*, i8*)*, void (i8*, i8**)*, void (i8*, i8**)* }
%struct.mg_connection = type { %struct.mg_request_info, %struct.mg_context*, %struct.ssl_st*, %struct.ssl_ctx_st*, %struct.socket, i64, i64, i64, i64, i8*, i8*, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.mg_request_info = type { i8*, i8*, i8*, i8*, i8*, i64, i32, i32, i8*, i8*, i32, [64 x %struct.mg_header] }
%struct.mg_header = type { i8*, i8* }
%struct.ssl_st = type opaque
%struct.socket = type { i32, %union.usa, %union.usa, i8 }
%union.usa = type { %struct.sockaddr_in }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i32, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.anon }
%struct.anon = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%struct.dir_scan_data = type { %struct.de*, i32, i32 }
%struct.de = type { %struct.mg_connection*, i8*, %struct.file }
%struct.file = type { i32, i64, i64, %struct._IO_FILE*, i8*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.MD5Context = type { [4 x i32], [2 x i32], [64 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [3 x i64] }
%struct.vec = type { i8*, i64 }
%struct.ssl_method_st = type opaque
%struct.sockaddr = type { i16, [14 x i8] }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_condattr_t = type { i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.pollfd = type { i32, i16, i16 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.__dirstream = type opaque
%struct.cgi_env_block = type { %struct.mg_connection*, [4096 x i8], i32, [64 x i8*], i32 }
%struct.ah = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.timeval = type { i64, i64 }
%union.anon = type { i8* }
%struct.linger = type { i32, i32 }

@config_options = internal global [49 x i8*] [i8* getelementptr inbounds ([12 x i8]* @.str403, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str404, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str405, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8]* @.str406, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8]* @.str407, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8]* @.str408, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8]* @.str409, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str410, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str411, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str412, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str413, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8]* @.str414, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([25 x i8]* @.str415, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str416, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8]* @.str417, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8]* @.str418, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8]* @.str419, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str420, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str421, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str422, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8]* @.str423, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8]* @.str424, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str425, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str426, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8]* @.str427, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8]* @.str428, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str429, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str430, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8]* @.str431, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([20 x i8]* @.str432, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([19 x i8]* @.str433, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str434, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str1 = private unnamed_addr constant [4 x i8] c"4.1\00", align 1
@.str2 = private unnamed_addr constant [9 x i8] c"%X\0D\0A%s\0D\0A\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"s >= p\00", align 1
@.str4 = private unnamed_addr constant [17 x i8] c"tests/mongoose.c\00", align 1
@__PRETTY_FUNCTION__.mg_get_var = private unnamed_addr constant [67 x i8] c"int mg_get_var(const char *, size_t, const char *, char *, size_t)\00", align 1
@builtin_mime_types = internal constant [48 x %struct.anon.0] [%struct.anon.0 { i8* getelementptr inbounds ([6 x i8]* @.str318, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([10 x i8]* @.str319, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str320, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([10 x i8]* @.str319, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([6 x i8]* @.str321, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([10 x i8]* @.str319, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([7 x i8]* @.str322, i32 0, i32 0), i64 6, i8* getelementptr inbounds ([10 x i8]* @.str319, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str323, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([9 x i8]* @.str324, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([4 x i8]* @.str325, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([25 x i8]* @.str326, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str327, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([13 x i8]* @.str328, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str329, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([10 x i8]* @.str330, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str331, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([11 x i8]* @.str332, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([6 x i8]* @.str333, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([11 x i8]* @.str332, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str334, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([10 x i8]* @.str335, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str336, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([14 x i8]* @.str337, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str338, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([11 x i8]* @.str5, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([9 x i8]* @.str339, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([25 x i8]* @.str340, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str341, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([12 x i8]* @.str342, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str343, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([12 x i8]* @.str344, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str345, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([10 x i8]* @.str346, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str347, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([16 x i8]* @.str348, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str349, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([16 x i8]* @.str350, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str351, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([21 x i8]* @.str352, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str353, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([9 x i8]* @.str354, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([6 x i8]* @.str355, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([10 x i8]* @.str356, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([6 x i8]* @.str357, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([16 x i8]* @.str358, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str359, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([16 x i8]* @.str358, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([4 x i8]* @.str360, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([21 x i8]* @.str352, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str361, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([19 x i8]* @.str362, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str363, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([25 x i8]* @.str364, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str365, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([29 x i8]* @.str366, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str367, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([18 x i8]* @.str368, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str369, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([21 x i8]* @.str370, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str371, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([18 x i8]* @.str372, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([4 x i8]* @.str373, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([21 x i8]* @.str374, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str375, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([29 x i8]* @.str376, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str377, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([29 x i8]* @.str376, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str378, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([16 x i8]* @.str379, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str380, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([16 x i8]* @.str381, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str382, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([30 x i8]* @.str383, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str384, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([11 x i8]* @.str385, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([6 x i8]* @.str386, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([11 x i8]* @.str387, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([6 x i8]* @.str388, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([11 x i8]* @.str385, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str389, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([16 x i8]* @.str390, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str391, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([10 x i8]* @.str392, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str393, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([12 x i8]* @.str394, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str395, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([15 x i8]* @.str396, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str397, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([16 x i8]* @.str398, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str399, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([10 x i8]* @.str400, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str401, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([23 x i8]* @.str402, i32 0, i32 0) }, %struct.anon.0 zeroinitializer], align 16
@.str5 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"%s.tmp\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str10 = private unnamed_addr constant [16 x i8] c"%[^:]:%[^:]:%*s\00", align 1
@.str11 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str12 = private unnamed_addr constant [10 x i8] c"%s:%s:%s\0A\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@mg_url_encode.dont_escape = internal global i8* getelementptr inbounds ([10 x i8]* @.str14, i32 0, i32 0), align 8
@.str14 = private unnamed_addr constant [10 x i8] c"._-$,;~()\00", align 1
@mg_url_encode.hex = internal global i8* getelementptr inbounds ([17 x i8]* @.str15, i32 0, i32 0), align 8
@.str15 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str16 = private unnamed_addr constant [10 x i8] c"Not Found\00", align 1
@.str17 = private unnamed_addr constant [15 x i8] c"File not found\00", align 1
@.str18 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str19 = private unnamed_addr constant [10 x i8] c"boundary=\00", align 1
@.str20 = private unnamed_addr constant [19 x i8] c"boundary=\22%99[^\22]\22\00", align 1
@.str21 = private unnamed_addr constant [14 x i8] c"boundary=%99s\00", align 1
@.str22 = private unnamed_addr constant [37 x i8] c"len >= 0 && len <= (int) sizeof(buf)\00", align 1
@__PRETTY_FUNCTION__.mg_upload = private unnamed_addr constant [52 x i8] c"int mg_upload(struct mg_connection *, const char *)\00", align 1
@.str23 = private unnamed_addr constant [49 x i8] c"Content-Disposition: %*s %*s filename=\22%1023[^\22]\00", align 1
@.str24 = private unnamed_addr constant [19 x i8] c"len >= headers_len\00", align 1
@.str25 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str26 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str27 = private unnamed_addr constant [5 x i8] c"\0D\0A--\00", align 1
@ssl_sw = internal global [22 x %struct.ssl_func] [%struct.ssl_func { i8* getelementptr inbounds ([9 x i8]* @.str288, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([11 x i8]* @.str289, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([12 x i8]* @.str290, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([9 x i8]* @.str291, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([10 x i8]* @.str292, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([14 x i8]* @.str293, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([11 x i8]* @.str294, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([8 x i8]* @.str295, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([12 x i8]* @.str296, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([21 x i8]* @.str297, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([17 x i8]* @.str298, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([28 x i8]* @.str299, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([29 x i8]* @.str300, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([30 x i8]* @.str301, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([13 x i8]* @.str302, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([23 x i8]* @.str303, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([35 x i8]* @.str304, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([21 x i8]* @.str305, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([12 x i8]* @.str306, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([19 x i8]* @.str307, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([13 x i8]* @.str308, i32 0, i32 0), void ()* null }, %struct.ssl_func zeroinitializer], align 16
@mg_connect.fake_ctx = internal global %struct.mg_context zeroinitializer, align 8
@.str28 = private unnamed_addr constant [13 x i8] c"calloc(): %s\00", align 1
@.str29 = private unnamed_addr constant [18 x i8] c"SSL_CTX_new error\00", align 1
@.str30 = private unnamed_addr constant [22 x i8] c"Error sending request\00", align 1
@.str31 = private unnamed_addr constant [19 x i8] c"Invalid option: %s\00", align 1
@.str32 = private unnamed_addr constant [32 x i8] c"%s: option value cannot be NULL\00", align 1
@.str33 = private unnamed_addr constant [30 x i8] c"warning: %s: duplicate option\00", align 1
@.str34 = private unnamed_addr constant [32 x i8] c"Cannot start worker thread: %ld\00", align 1
@.str35 = private unnamed_addr constant [41 x i8] c"Cannot create new connection struct, OOM\00", align 1
@.str36 = private unnamed_addr constant [22 x i8] c"ctx->num_threads >= 0\00", align 1
@__PRETTY_FUNCTION__.worker_thread = private unnamed_addr constant [28 x i8] c"void *worker_thread(void *)\00", align 1
@.str37 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str38 = private unnamed_addr constant [13 x i8] c"Server Error\00", align 1
@.str39 = private unnamed_addr constant [18 x i8] c"Invalid URI: [%s]\00", align 1
@.str40 = private unnamed_addr constant [12 x i8] c"Bad Request\00", align 1
@.str41 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str42 = private unnamed_addr constant [4 x i8] c"1.1\00", align 1
@.str43 = private unnamed_addr constant [23 x i8] c"Bad HTTP version: [%s]\00", align 1
@.str44 = private unnamed_addr constant [17 x i8] c"Bad HTTP version\00", align 1
@.str45 = private unnamed_addr constant [17 x i8] c"discard_len >= 0\00", align 1
@__PRETTY_FUNCTION__.process_new_connection = private unnamed_addr constant [52 x i8] c"void process_new_connection(struct mg_connection *)\00", align 1
@.str46 = private unnamed_addr constant [20 x i8] c"conn->data_len >= 0\00", align 1
@.str47 = private unnamed_addr constant [33 x i8] c"conn->data_len <= conn->buf_size\00", align 1
@.str48 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str49 = private unnamed_addr constant [11 x i8] c"keep-alive\00", align 1
@.str50 = private unnamed_addr constant [21 x i8] c"%d/%b/%Y:%H:%M:%S %z\00", align 1
@.str51 = private unnamed_addr constant [36 x i8] c"%s - %s [%s] \22%s %s HTTP/%s\22 %d %ld\00", align 1
@.str52 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str53 = private unnamed_addr constant [8 x i8] c"Referer\00", align 1
@.str54 = private unnamed_addr constant [11 x i8] c"User-Agent\00", align 1
@.str55 = private unnamed_addr constant [3 x i8] c" -\00", align 1
@.str56 = private unnamed_addr constant [6 x i8] c" \22%s\22\00", align 1
@.str57 = private unnamed_addr constant [8 x i8] c"OPTIONS\00", align 1
@.str58 = private unnamed_addr constant [4 x i8] c"PUT\00", align 1
@.str59 = private unnamed_addr constant [6 x i8] c"MKCOL\00", align 1
@.str60 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str61 = private unnamed_addr constant [11 x i8] c"No Content\00", align 1
@.str62 = private unnamed_addr constant [7 x i8] c"Locked\00", align 1
@.str63 = private unnamed_addr constant [15 x i8] c"remove(%s): %s\00", align 1
@http_500_error = internal global i8* getelementptr inbounds ([22 x i8]* @.str211, i32 0, i32 0), align 8
@.str64 = private unnamed_addr constant [50 x i8] c"HTTP/1.1 301 Moved Permanently\0D\0ALocation: %s/\0D\0A\0D\0A\00", align 1
@.str65 = private unnamed_addr constant [9 x i8] c"PROPFIND\00", align 1
@.str66 = private unnamed_addr constant [25 x i8] c"Directory Listing Denied\00", align 1
@.str67 = private unnamed_addr constant [25 x i8] c"Directory listing denied\00", align 1
@.str68 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str69 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str70 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str71 = private unnamed_addr constant [16 x i8] c"Not Implemented\00", align 1
@.str72 = private unnamed_addr constant [29 x i8] c"Method %s is not implemented\00", align 1
@.str73 = private unnamed_addr constant [13 x i8] c"Not Modified\00", align 1
@.str74 = private unnamed_addr constant [18 x i8] c"If-Modified-Since\00", align 1
@.str75 = private unnamed_addr constant [14 x i8] c"If-None-Match\00", align 1
@parse_date_string.days_before_month = internal constant [12 x i16] [i16 0, i16 31, i16 59, i16 90, i16 120, i16 151, i16 181, i16 212, i16 243, i16 273, i16 304, i16 334], align 16
@.str76 = private unnamed_addr constant [19 x i8] c"%d/%3s/%d %d:%d:%d\00", align 1
@.str77 = private unnamed_addr constant [19 x i8] c"%d %3s %d %d:%d:%d\00", align 1
@.str78 = private unnamed_addr constant [25 x i8] c"%*3s, %d %3s %d %d:%d:%d\00", align 1
@.str79 = private unnamed_addr constant [19 x i8] c"%d-%3s-%d %d:%d:%d\00", align 1
@month_names = internal global [12 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str80, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str81, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str82, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str83, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str84, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str85, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str86, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str87, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str88, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str89, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str90, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str91, i32 0, i32 0)], align 16
@.str80 = private unnamed_addr constant [4 x i8] c"Jan\00", align 1
@.str81 = private unnamed_addr constant [4 x i8] c"Feb\00", align 1
@.str82 = private unnamed_addr constant [4 x i8] c"Mar\00", align 1
@.str83 = private unnamed_addr constant [4 x i8] c"Apr\00", align 1
@.str84 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str85 = private unnamed_addr constant [4 x i8] c"Jun\00", align 1
@.str86 = private unnamed_addr constant [4 x i8] c"Jul\00", align 1
@.str87 = private unnamed_addr constant [4 x i8] c"Aug\00", align 1
@.str88 = private unnamed_addr constant [4 x i8] c"Sep\00", align 1
@.str89 = private unnamed_addr constant [4 x i8] c"Oct\00", align 1
@.str90 = private unnamed_addr constant [4 x i8] c"Nov\00", align 1
@.str91 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@.str92 = private unnamed_addr constant [10 x i8] c"\22%lx.%ld\22\00", align 1
@.str93 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str94 = private unnamed_addr constant [14 x i8] c"fopen(%s): %s\00", align 1
@.str95 = private unnamed_addr constant [59 x i8] c"HTTP/1.1 200 OK\0D\0AContent-Type: %.*s\0D\0AConnection: close\0D\0A\0D\0A\00", align 1
@.str96 = private unnamed_addr constant [36 x i8] c"SSI #include level is too deep (%s)\00", align 1
@.str97 = private unnamed_addr constant [25 x i8] c"len <= (int) sizeof(buf)\00", align 1
@__PRETTY_FUNCTION__.send_ssi_file = private unnamed_addr constant [77 x i8] c"void send_ssi_file(struct mg_connection *, const char *, struct file *, int)\00", align 1
@.str98 = private unnamed_addr constant [6 x i8] c"<!--#\00", align 1
@.str99 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str100 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str101 = private unnamed_addr constant [30 x i8] c"%s: unknown SSI command: \22%s\22\00", align 1
@.str102 = private unnamed_addr constant [25 x i8] c"%s: SSI tag is too large\00", align 1
@.str103 = private unnamed_addr constant [9 x i8] c" \22%[^\22]\22\00", align 1
@.str104 = private unnamed_addr constant [20 x i8] c"Bad SSI #exec: [%s]\00", align 1
@.str105 = private unnamed_addr constant [27 x i8] c"Cannot SSI #exec: [%s]: %s\00", align 1
@.str106 = private unnamed_addr constant [17 x i8] c" virtual=\22%[^\22]\22\00", align 1
@.str107 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@.str108 = private unnamed_addr constant [17 x i8] c" abspath=\22%[^\22]\22\00", align 1
@.str109 = private unnamed_addr constant [14 x i8] c" file=\22%[^\22]\22\00", align 1
@.str110 = private unnamed_addr constant [23 x i8] c"Bad SSI #include: [%s]\00", align 1
@.str111 = private unnamed_addr constant [46 x i8] c"Cannot open SSI #include: [%s]: fopen(%s): %s\00", align 1
@.str112 = private unnamed_addr constant [16 x i8] c"vsnprintf error\00", align 1
@.str113 = private unnamed_addr constant [36 x i8] c"truncating vsnprintf buffer: [%.*s]\00", align 1
@.str114 = private unnamed_addr constant [27 x i8] c"Cannot create CGI pipe: %s\00", align 1
@.str115 = private unnamed_addr constant [34 x i8] c"Cannot spawn CGI process [%s]: %s\00", align 1
@.str116 = private unnamed_addr constant [10 x i8] c"fopen: %s\00", align 1
@.str117 = private unnamed_addr constant [71 x i8] c"CGI program sent malformed or too big (>%u bytes) HTTP headers: [%.*s]\00", align 1
@.str118 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str119 = private unnamed_addr constant [7 x i8] c"Status\00", align 1
@.str120 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str121 = private unnamed_addr constant [17 x i8] c"HTTP/1.1 %d %s\0D\0A\00", align 1
@.str122 = private unnamed_addr constant [9 x i8] c"%s: %s\0D\0A\00", align 1
@.str123 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str124 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str125 = private unnamed_addr constant [17 x i8] c"*nread <= bufsiz\00", align 1
@__PRETTY_FUNCTION__.read_request = private unnamed_addr constant [69 x i8] c"int read_request(FILE *, struct mg_connection *, char *, int, int *)\00", align 1
@.str126 = private unnamed_addr constant [7 x i8] c"Expect\00", align 1
@.str127 = private unnamed_addr constant [17 x i8] c"fp != ((void*)0)\00", align 1
@__PRETTY_FUNCTION__.forward_body_data = private unnamed_addr constant [69 x i8] c"int forward_body_data(struct mg_connection *, FILE *, SOCKET, SSL *)\00", align 1
@.str128 = private unnamed_addr constant [16 x i8] c"Length Required\00", align 1
@.str129 = private unnamed_addr constant [13 x i8] c"100-continue\00", align 1
@.str130 = private unnamed_addr constant [19 x i8] c"Expectation Failed\00", align 1
@.str131 = private unnamed_addr constant [26 x i8] c"HTTP/1.1 100 Continue\0D\0A\0D\0A\00", align 1
@.str132 = private unnamed_addr constant [18 x i8] c"buffered_len >= 0\00", align 1
@.str133 = private unnamed_addr constant [28 x i8] c"conn->consumed_content == 0\00", align 1
@.str134 = private unnamed_addr constant [11 x i8] c"fork(): %s\00", align 1
@.str135 = private unnamed_addr constant [18 x i8] c"%s: chdir(%s): %s\00", align 1
@__func__.spawn_process = private unnamed_addr constant [14 x i8] c"spawn_process\00", align 1
@.str136 = private unnamed_addr constant [20 x i8] c"%s: dup2(%d, 0): %s\00", align 1
@.str137 = private unnamed_addr constant [20 x i8] c"%s: dup2(%d, 1): %s\00", align 1
@.str138 = private unnamed_addr constant [19 x i8] c"%s: execle(%s): %s\00", align 1
@.str139 = private unnamed_addr constant [22 x i8] c"%s: execle(%s %s): %s\00", align 1
@.str140 = private unnamed_addr constant [15 x i8] c"SERVER_NAME=%s\00", align 1
@.str141 = private unnamed_addr constant [15 x i8] c"SERVER_ROOT=%s\00", align 1
@.str142 = private unnamed_addr constant [17 x i8] c"DOCUMENT_ROOT=%s\00", align 1
@.str143 = private unnamed_addr constant [22 x i8] c"SERVER_SOFTWARE=%s/%s\00", align 1
@.str144 = private unnamed_addr constant [9 x i8] c"Mongoose\00", align 1
@.str145 = private unnamed_addr constant [26 x i8] c"GATEWAY_INTERFACE=CGI/1.1\00", align 1
@.str146 = private unnamed_addr constant [25 x i8] c"SERVER_PROTOCOL=HTTP/1.1\00", align 1
@.str147 = private unnamed_addr constant [20 x i8] c"REDIRECT_STATUS=200\00", align 1
@.str148 = private unnamed_addr constant [15 x i8] c"SERVER_PORT=%d\00", align 1
@.str149 = private unnamed_addr constant [18 x i8] c"REQUEST_METHOD=%s\00", align 1
@.str150 = private unnamed_addr constant [15 x i8] c"REMOTE_ADDR=%s\00", align 1
@.str151 = private unnamed_addr constant [15 x i8] c"REMOTE_PORT=%d\00", align 1
@.str152 = private unnamed_addr constant [19 x i8] c"REQUEST_URI=%s%s%s\00", align 1
@.str153 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str154 = private unnamed_addr constant [17 x i8] c"SCRIPT_NAME=%.*s\00", align 1
@.str155 = private unnamed_addr constant [13 x i8] c"PATH_INFO=%s\00", align 1
@.str156 = private unnamed_addr constant [19 x i8] c"SCRIPT_NAME=%.*s%s\00", align 1
@.str157 = private unnamed_addr constant [19 x i8] c"SCRIPT_FILENAME=%s\00", align 1
@.str158 = private unnamed_addr constant [19 x i8] c"PATH_TRANSLATED=%s\00", align 1
@.str159 = private unnamed_addr constant [9 x i8] c"HTTPS=%s\00", align 1
@.str160 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str161 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str162 = private unnamed_addr constant [16 x i8] c"CONTENT_TYPE=%s\00", align 1
@.str163 = private unnamed_addr constant [16 x i8] c"QUERY_STRING=%s\00", align 1
@.str164 = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@.str165 = private unnamed_addr constant [18 x i8] c"CONTENT_LENGTH=%s\00", align 1
@.str166 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str167 = private unnamed_addr constant [8 x i8] c"PATH=%s\00", align 1
@.str168 = private unnamed_addr constant [16 x i8] c"LD_LIBRARY_PATH\00", align 1
@.str169 = private unnamed_addr constant [19 x i8] c"LD_LIBRARY_PATH=%s\00", align 1
@.str170 = private unnamed_addr constant [8 x i8] c"PERLLIB\00", align 1
@.str171 = private unnamed_addr constant [11 x i8] c"PERLLIB=%s\00", align 1
@.str172 = private unnamed_addr constant [15 x i8] c"REMOTE_USER=%s\00", align 1
@.str173 = private unnamed_addr constant [17 x i8] c"AUTH_TYPE=Digest\00", align 1
@.str174 = private unnamed_addr constant [11 x i8] c"HTTP_%s=%s\00", align 1
@.str175 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str176 = private unnamed_addr constant [62 x i8] c"blk->nvars < (int) (sizeof(blk->vars) / sizeof(blk->vars[0]))\00", align 1
@__PRETTY_FUNCTION__.prepare_cgi_environment = private unnamed_addr constant [91 x i8] c"void prepare_cgi_environment(struct mg_connection *, const char *, struct cgi_env_block *)\00", align 1
@.str177 = private unnamed_addr constant [13 x i8] c"blk->len > 0\00", align 1
@.str178 = private unnamed_addr constant [34 x i8] c"blk->len < (int) sizeof(blk->buf)\00", align 1
@.str179 = private unnamed_addr constant [11 x i8] c"space >= 0\00", align 1
@__PRETTY_FUNCTION__.addenv = private unnamed_addr constant [56 x i8] c"char *addenv(struct cgi_env_block *, const char *, ...)\00", align 1
@.str180 = private unnamed_addr constant [38 x i8] c"%s: CGI env buffer truncated for [%s]\00", align 1
@__func__.addenv = private unnamed_addr constant [7 x i8] c"addenv\00", align 1
@.str181 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@handle_directory_request.data = private unnamed_addr constant %struct.dir_scan_data { %struct.de* null, i32 0, i32 128 }, align 8
@.str182 = private unnamed_addr constant [22 x i8] c"Cannot open directory\00", align 1
@.str183 = private unnamed_addr constant [23 x i8] c"Error: opendir(%s): %s\00", align 1
@.str184 = private unnamed_addr constant [88 x i8] c"HTTP/1.1 200 OK\0D\0ATransfer-Encoding: Chunked\0D\0AContent-Type: text/html; charset=utf-8\0D\0A\0D\0A\00", align 1
@.str185 = private unnamed_addr constant [280 x i8] c"<html><head><title>Index of %s</title><style>th {text-align: left;}</style></head><body><h1>Index of %s</h1><pre><table cellpadding=\220\22><tr><th><a href=\22?n%c\22>Name</a></th><th><a href=\22?d%c\22>Modified</a></th><th><a href=\22?s%c\22>Size</a></th></tr><tr><td colspan=\223\22><hr></td></tr>\00", align 1
@.str186 = private unnamed_addr constant [81 x i8] c"<tr><td><a href=\22%s%s\22>%s</a></td><td>&nbsp;%s</td><td>&nbsp;&nbsp;%s</td></tr>\0A\00", align 1
@.str187 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str188 = private unnamed_addr constant [17 x i8] c"Parent directory\00", align 1
@.str189 = private unnamed_addr constant [23 x i8] c"</table></body></html>\00", align 1
@.str190 = private unnamed_addr constant [6 x i8] c"0\0D\0A\0D\0A\00", align 1
@.str191 = private unnamed_addr constant [12 x i8] c"[DIRECTORY]\00", align 1
@.str192 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str193 = private unnamed_addr constant [6 x i8] c"%.1fk\00", align 1
@.str194 = private unnamed_addr constant [6 x i8] c"%.1fM\00", align 1
@.str195 = private unnamed_addr constant [6 x i8] c"%.1fG\00", align 1
@.str196 = private unnamed_addr constant [15 x i8] c"%d-%b-%Y %H:%M\00", align 1
@.str197 = private unnamed_addr constant [85 x i8] c"<tr><td><a href=\22%s%s%s\22>%s%s</a></td><td>&nbsp;%s</td><td>&nbsp;&nbsp;%s</td></tr>\0A\00", align 1
@.str198 = private unnamed_addr constant [3 x i8] c"na\00", align 1
@.str199 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str200 = private unnamed_addr constant [6 x i8] c"Depth\00", align 1
@.str201 = private unnamed_addr constant [88 x i8] c"HTTP/1.1 207 Multi-Status\0D\0AConnection: close\0D\0AContent-Type: text/xml; charset=utf-8\0D\0A\0D\0A\00", align 1
@.str202 = private unnamed_addr constant [70 x i8] c"<?xml version=\221.0\22 encoding=\22utf-8\22?><d:multistatus xmlns:d='DAV:'>\0A\00", align 1
@.str203 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str204 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str205 = private unnamed_addr constant [17 x i8] c"</d:multistatus>\00", align 1
@.str206 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str207 = private unnamed_addr constant [244 x i8] c"<d:response><d:href>%s</d:href><d:propstat><d:prop><d:resourcetype>%s</d:resourcetype><d:getcontentlength>%ld</d:getcontentlength><d:getlastmodified>%s</d:getlastmodified></d:prop><d:status>HTTP/1.1 200 OK</d:status></d:propstat></d:response>\0A\00", align 1
@.str208 = private unnamed_addr constant [16 x i8] c"<d:collection/>\00", align 1
@.str209 = private unnamed_addr constant [26 x i8] c"%a, %d %b %Y %H:%M:%S GMT\00", align 1
@.str210 = private unnamed_addr constant [13 x i8] c"**.htpasswd$\00", align 1
@.str211 = private unnamed_addr constant [22 x i8] c"Internal Server Error\00", align 1
@.str212 = private unnamed_addr constant [19 x i8] c"Method Not Allowed\00", align 1
@.str213 = private unnamed_addr constant [14 x i8] c"mkcol(%s): %s\00", align 1
@.str214 = private unnamed_addr constant [23 x i8] c"Unsupported media type\00", align 1
@.str215 = private unnamed_addr constant [24 x i8] c"HTTP/1.1 %d Created\0D\0A\0D\0A\00", align 1
@.str216 = private unnamed_addr constant [10 x i8] c"Forbidden\00", align 1
@.str217 = private unnamed_addr constant [9 x i8] c"Conflict\00", align 1
@.str218 = private unnamed_addr constant [19 x i8] c"HTTP/1.1 %d OK\0D\0A\0D\0A\00", align 1
@.str219 = private unnamed_addr constant [16 x i8] c"put_dir(%s): %s\00", align 1
@.str220 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1
@.str221 = private unnamed_addr constant [14 x i8] c"Content-Range\00", align 1
@.str222 = private unnamed_addr constant [38 x i8] c"HTTP/1.1 %d OK\0D\0AContent-Length: 0\0D\0A\0D\0A\00", align 1
@.str223 = private unnamed_addr constant [14 x i8] c"bytes=%ld-%ld\00", align 1
@.str224 = private unnamed_addr constant [15 x i8] c"%[^:]:%[^:]:%s\00", align 1
@.str225 = private unnamed_addr constant [14 x i8] c"Authorization\00", align 1
@.str226 = private unnamed_addr constant [8 x i8] c"Digest \00", align 1
@.str227 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str228 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str229 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str230 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str231 = private unnamed_addr constant [7 x i8] c"cnonce\00", align 1
@.str232 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str233 = private unnamed_addr constant [4 x i8] c"uri\00", align 1
@.str234 = private unnamed_addr constant [4 x i8] c"qop\00", align 1
@.str235 = private unnamed_addr constant [3 x i8] c"nc\00", align 1
@.str236 = private unnamed_addr constant [6 x i8] c"nonce\00", align 1
@.str237 = private unnamed_addr constant [100 x i8] c"HTTP/1.1 200 OK\0D\0AAllow: GET, POST, HEAD, CONNECT, PUT, DELETE, OPTIONS, PROPFIND, MKCOL\0D\0ADAV: 1\0D\0A\0D\0A\00", align 1
@.str238 = private unnamed_addr constant [111 x i8] c"HTTP/1.1 401 Unauthorized\0D\0AContent-Length: 0\0D\0AWWW-Authenticate: Digest qop=\22auth\22, realm=\22%s\22, nonce=\22%lu\22\0D\0A\0D\0A\00", align 1
@.str239 = private unnamed_addr constant [23 x i8] c"%s: cannot open %s: %s\00", align 1
@__func__.check_authorization = private unnamed_addr constant [20 x i8] c"check_authorization\00", align 1
@.str240 = private unnamed_addr constant [10 x i8] c".htpasswd\00", align 1
@.str241 = private unnamed_addr constant [9 x i8] c"%.*s%c%s\00", align 1
@.str242 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str243 = private unnamed_addr constant [10 x i8] c"%1024[^:]\00", align 1
@.str244 = private unnamed_addr constant [50 x i8] c"HTTP/1.1 302 Found\0D\0ALocation: https://%s:%d%s\0D\0A\0D\0A\00", align 1
@.str245 = private unnamed_addr constant [6 x i8] c"%lf%c\00", align 1
@.str246 = private unnamed_addr constant [17 x i8] c"%d.%d.%d.%d/%d%n\00", align 1
@.str247 = private unnamed_addr constant [14 x i8] c"%d.%d.%d.%d%n\00", align 1
@.str248 = private unnamed_addr constant [7 x i8] c"%.*s%s\00", align 1
@.str249 = private unnamed_addr constant [16 x i8] c"Accept-Encoding\00", align 1
@.str250 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@.str251 = private unnamed_addr constant [6 x i8] c"%s.gz\00", align 1
@crypto_sw = internal global [6 x %struct.ssl_func] [%struct.ssl_func { i8* getelementptr inbounds ([17 x i8]* @.str252, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([28 x i8]* @.str253, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([23 x i8]* @.str254, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([14 x i8]* @.str255, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([17 x i8]* @.str256, i32 0, i32 0), void ()* null }, %struct.ssl_func zeroinitializer], align 16
@ssl_mutexes = internal global %union.pthread_mutex_t* null, align 8
@.str252 = private unnamed_addr constant [17 x i8] c"CRYPTO_num_locks\00", align 1
@.str253 = private unnamed_addr constant [28 x i8] c"CRYPTO_set_locking_callback\00", align 1
@.str254 = private unnamed_addr constant [23 x i8] c"CRYPTO_set_id_callback\00", align 1
@.str255 = private unnamed_addr constant [14 x i8] c"ERR_get_error\00", align 1
@.str256 = private unnamed_addr constant [17 x i8] c"ERR_error_string\00", align 1
@.str257 = private unnamed_addr constant [33 x i8] c"%s: %s is not allowed to connect\00", align 1
@__func__.accept_new_connection = private unnamed_addr constant [22 x i8] c"accept_new_connection\00", align 1
@.str258 = private unnamed_addr constant [36 x i8] c"%s: subnet must be [+|-]x.x.x.x[/x]\00", align 1
@__func__.check_acl = private unnamed_addr constant [10 x i8] c"check_acl\00", align 1
@.str259 = private unnamed_addr constant [22 x i8] c"%s: unknown user [%s]\00", align 1
@__func__.set_uid_option = private unnamed_addr constant [15 x i8] c"set_uid_option\00", align 1
@.str260 = private unnamed_addr constant [19 x i8] c"%s: setgid(%s): %s\00", align 1
@.str261 = private unnamed_addr constant [19 x i8] c"%s: setuid(%s): %s\00", align 1
@.str262 = private unnamed_addr constant [51 x i8] c"%s: %.*s: invalid port spec. Expecting list of: %s\00", align 1
@__func__.set_ports_option = private unnamed_addr constant [17 x i8] c"set_ports_option\00", align 1
@.str263 = private unnamed_addr constant [23 x i8] c"[IP_ADDRESS:]PORT[s|r]\00", align 1
@.str264 = private unnamed_addr constant [55 x i8] c"Cannot add SSL socket, is -ssl_certificate option set?\00", align 1
@.str265 = private unnamed_addr constant [33 x i8] c"%s: cannot bind to %.*s: %d (%s)\00", align 1
@.str266 = private unnamed_addr constant [17 x i8] c"%u.%u.%u.%u:%u%n\00", align 1
@.str267 = private unnamed_addr constant [5 x i8] c"%u%n\00", align 1
@.str268 = private unnamed_addr constant [10 x i8] c"libssl.so\00", align 1
@.str269 = private unnamed_addr constant [13 x i8] c"libcrypto.so\00", align 1
@.str270 = private unnamed_addr constant [31 x i8] c"SSL_CTX_new (server) error: %s\00", align 1
@__func__.set_ssl_option = private unnamed_addr constant [15 x i8] c"set_ssl_option\00", align 1
@.str271 = private unnamed_addr constant [32 x i8] c"%s: cannot allocate mutexes: %s\00", align 1
@.str272 = private unnamed_addr constant [19 x i8] c"%s: cannot load %s\00", align 1
@__func__.load_dll = private unnamed_addr constant [9 x i8] c"load_dll\00", align 1
@.str273 = private unnamed_addr constant [23 x i8] c"%s: %s: cannot find %s\00", align 1
@.str274 = private unnamed_addr constant [19 x i8] c"Cannot open %s: %s\00", align 1
@fc.fake_connection = internal global %struct.mg_connection zeroinitializer, align 8
@.str275 = private unnamed_addr constant [30 x i8] c"[%010lu] [error] [client %s] \00", align 1
@.str276 = private unnamed_addr constant [8 x i8] c"%s %s: \00", align 1
@.str277 = private unnamed_addr constant [61 x i8] c"conn->request_len < 0 || conn->data_len >= conn->request_len\00", align 1
@__PRETTY_FUNCTION__.getreq = private unnamed_addr constant [51 x i8] c"int getreq(struct mg_connection *, char *, size_t)\00", align 1
@.str278 = private unnamed_addr constant [18 x i8] c"Request Too Large\00", align 1
@.str279 = private unnamed_addr constant [25 x i8] c"Client closed connection\00", align 1
@.str280 = private unnamed_addr constant [20 x i8] c"Bad request: [%.*s]\00", align 1
@.str281 = private unnamed_addr constant [6 x i8] c"HTTP/\00", align 1
@.str282 = private unnamed_addr constant [8 x i8] c"CONNECT\00", align 1
@.str283 = private unnamed_addr constant [10 x i8] c"NULL host\00", align 1
@.str284 = private unnamed_addr constant [23 x i8] c"SSL is not initialized\00", align 1
@.str285 = private unnamed_addr constant [22 x i8] c"gethostbyname(%s): %s\00", align 1
@.str286 = private unnamed_addr constant [13 x i8] c"socket(): %s\00", align 1
@.str287 = private unnamed_addr constant [19 x i8] c"connect(%s:%d): %s\00", align 1
@.str288 = private unnamed_addr constant [9 x i8] c"SSL_free\00", align 1
@.str289 = private unnamed_addr constant [11 x i8] c"SSL_accept\00", align 1
@.str290 = private unnamed_addr constant [12 x i8] c"SSL_connect\00", align 1
@.str291 = private unnamed_addr constant [9 x i8] c"SSL_read\00", align 1
@.str292 = private unnamed_addr constant [10 x i8] c"SSL_write\00", align 1
@.str293 = private unnamed_addr constant [14 x i8] c"SSL_get_error\00", align 1
@.str294 = private unnamed_addr constant [11 x i8] c"SSL_set_fd\00", align 1
@.str295 = private unnamed_addr constant [8 x i8] c"SSL_new\00", align 1
@.str296 = private unnamed_addr constant [12 x i8] c"SSL_CTX_new\00", align 1
@.str297 = private unnamed_addr constant [21 x i8] c"SSLv23_server_method\00", align 1
@.str298 = private unnamed_addr constant [17 x i8] c"SSL_library_init\00", align 1
@.str299 = private unnamed_addr constant [28 x i8] c"SSL_CTX_use_PrivateKey_file\00", align 1
@.str300 = private unnamed_addr constant [29 x i8] c"SSL_CTX_use_certificate_file\00", align 1
@.str301 = private unnamed_addr constant [30 x i8] c"SSL_CTX_set_default_passwd_cb\00", align 1
@.str302 = private unnamed_addr constant [13 x i8] c"SSL_CTX_free\00", align 1
@.str303 = private unnamed_addr constant [23 x i8] c"SSL_load_error_strings\00", align 1
@.str304 = private unnamed_addr constant [35 x i8] c"SSL_CTX_use_certificate_chain_file\00", align 1
@.str305 = private unnamed_addr constant [21 x i8] c"SSLv23_client_method\00", align 1
@.str306 = private unnamed_addr constant [12 x i8] c"SSL_pending\00", align 1
@.str307 = private unnamed_addr constant [19 x i8] c"SSL_CTX_set_verify\00", align 1
@.str308 = private unnamed_addr constant [13 x i8] c"SSL_shutdown\00", align 1
@.str309 = private unnamed_addr constant [13 x i8] c"Error %d: %s\00", align 1
@.str310 = private unnamed_addr constant [55 x i8] c"HTTP/1.1 %d %s\0D\0AContent-Length: %d\0D\0AConnection: %s\0D\0A\0D\0A\00", align 1
@.str311 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str312 = private unnamed_addr constant [25 x i8] c"Content-Encoding: gzip\0D\0A\00", align 1
@.str313 = private unnamed_addr constant [6 x i8] c"Range\00", align 1
@.str314 = private unnamed_addr constant [50 x i8] c"range requests in gzipped files are not supported\00", align 1
@.str315 = private unnamed_addr constant [35 x i8] c"Content-Range: bytes %ld-%ld/%ld\0D\0A\00", align 1
@.str316 = private unnamed_addr constant [16 x i8] c"Partial Content\00", align 1
@.str317 = private unnamed_addr constant [143 x i8] c"HTTP/1.1 %d %s\0D\0ADate: %s\0D\0ALast-Modified: %s\0D\0AEtag: %s\0D\0AContent-Type: %.*s\0D\0AContent-Length: %ld\0D\0AConnection: %s\0D\0AAccept-Ranges: bytes\0D\0A%s%s%s\0D\0A\00", align 1
@bin2str.hex = internal global i8* getelementptr inbounds ([17 x i8]* @.str15, i32 0, i32 0), align 8
@is_big_endian.n = internal constant i32 1, align 4
@.str318 = private unnamed_addr constant [6 x i8] c".html\00", align 1
@.str319 = private unnamed_addr constant [10 x i8] c"text/html\00", align 1
@.str320 = private unnamed_addr constant [5 x i8] c".htm\00", align 1
@.str321 = private unnamed_addr constant [6 x i8] c".shtm\00", align 1
@.str322 = private unnamed_addr constant [7 x i8] c".shtml\00", align 1
@.str323 = private unnamed_addr constant [5 x i8] c".css\00", align 1
@.str324 = private unnamed_addr constant [9 x i8] c"text/css\00", align 1
@.str325 = private unnamed_addr constant [4 x i8] c".js\00", align 1
@.str326 = private unnamed_addr constant [25 x i8] c"application/x-javascript\00", align 1
@.str327 = private unnamed_addr constant [5 x i8] c".ico\00", align 1
@.str328 = private unnamed_addr constant [13 x i8] c"image/x-icon\00", align 1
@.str329 = private unnamed_addr constant [5 x i8] c".gif\00", align 1
@.str330 = private unnamed_addr constant [10 x i8] c"image/gif\00", align 1
@.str331 = private unnamed_addr constant [5 x i8] c".jpg\00", align 1
@.str332 = private unnamed_addr constant [11 x i8] c"image/jpeg\00", align 1
@.str333 = private unnamed_addr constant [6 x i8] c".jpeg\00", align 1
@.str334 = private unnamed_addr constant [5 x i8] c".png\00", align 1
@.str335 = private unnamed_addr constant [10 x i8] c"image/png\00", align 1
@.str336 = private unnamed_addr constant [5 x i8] c".svg\00", align 1
@.str337 = private unnamed_addr constant [14 x i8] c"image/svg+xml\00", align 1
@.str338 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@.str339 = private unnamed_addr constant [9 x i8] c".torrent\00", align 1
@.str340 = private unnamed_addr constant [25 x i8] c"application/x-bittorrent\00", align 1
@.str341 = private unnamed_addr constant [5 x i8] c".wav\00", align 1
@.str342 = private unnamed_addr constant [12 x i8] c"audio/x-wav\00", align 1
@.str343 = private unnamed_addr constant [5 x i8] c".mp3\00", align 1
@.str344 = private unnamed_addr constant [12 x i8] c"audio/x-mp3\00", align 1
@.str345 = private unnamed_addr constant [5 x i8] c".mid\00", align 1
@.str346 = private unnamed_addr constant [10 x i8] c"audio/mid\00", align 1
@.str347 = private unnamed_addr constant [5 x i8] c".m3u\00", align 1
@.str348 = private unnamed_addr constant [16 x i8] c"audio/x-mpegurl\00", align 1
@.str349 = private unnamed_addr constant [5 x i8] c".ogg\00", align 1
@.str350 = private unnamed_addr constant [16 x i8] c"application/ogg\00", align 1
@.str351 = private unnamed_addr constant [5 x i8] c".ram\00", align 1
@.str352 = private unnamed_addr constant [21 x i8] c"audio/x-pn-realaudio\00", align 1
@.str353 = private unnamed_addr constant [5 x i8] c".xml\00", align 1
@.str354 = private unnamed_addr constant [9 x i8] c"text/xml\00", align 1
@.str355 = private unnamed_addr constant [6 x i8] c".json\00", align 1
@.str356 = private unnamed_addr constant [10 x i8] c"text/json\00", align 1
@.str357 = private unnamed_addr constant [6 x i8] c".xslt\00", align 1
@.str358 = private unnamed_addr constant [16 x i8] c"application/xml\00", align 1
@.str359 = private unnamed_addr constant [5 x i8] c".xsl\00", align 1
@.str360 = private unnamed_addr constant [4 x i8] c".ra\00", align 1
@.str361 = private unnamed_addr constant [5 x i8] c".doc\00", align 1
@.str362 = private unnamed_addr constant [19 x i8] c"application/msword\00", align 1
@.str363 = private unnamed_addr constant [5 x i8] c".exe\00", align 1
@.str364 = private unnamed_addr constant [25 x i8] c"application/octet-stream\00", align 1
@.str365 = private unnamed_addr constant [5 x i8] c".zip\00", align 1
@.str366 = private unnamed_addr constant [29 x i8] c"application/x-zip-compressed\00", align 1
@.str367 = private unnamed_addr constant [5 x i8] c".xls\00", align 1
@.str368 = private unnamed_addr constant [18 x i8] c"application/excel\00", align 1
@.str369 = private unnamed_addr constant [5 x i8] c".tgz\00", align 1
@.str370 = private unnamed_addr constant [21 x i8] c"application/x-tar-gz\00", align 1
@.str371 = private unnamed_addr constant [5 x i8] c".tar\00", align 1
@.str372 = private unnamed_addr constant [18 x i8] c"application/x-tar\00", align 1
@.str373 = private unnamed_addr constant [4 x i8] c".gz\00", align 1
@.str374 = private unnamed_addr constant [21 x i8] c"application/x-gunzip\00", align 1
@.str375 = private unnamed_addr constant [5 x i8] c".arj\00", align 1
@.str376 = private unnamed_addr constant [29 x i8] c"application/x-arj-compressed\00", align 1
@.str377 = private unnamed_addr constant [5 x i8] c".rar\00", align 1
@.str378 = private unnamed_addr constant [5 x i8] c".rtf\00", align 1
@.str379 = private unnamed_addr constant [16 x i8] c"application/rtf\00", align 1
@.str380 = private unnamed_addr constant [5 x i8] c".pdf\00", align 1
@.str381 = private unnamed_addr constant [16 x i8] c"application/pdf\00", align 1
@.str382 = private unnamed_addr constant [5 x i8] c".swf\00", align 1
@.str383 = private unnamed_addr constant [30 x i8] c"application/x-shockwave-flash\00", align 1
@.str384 = private unnamed_addr constant [5 x i8] c".mpg\00", align 1
@.str385 = private unnamed_addr constant [11 x i8] c"video/mpeg\00", align 1
@.str386 = private unnamed_addr constant [6 x i8] c".webm\00", align 1
@.str387 = private unnamed_addr constant [11 x i8] c"video/webm\00", align 1
@.str388 = private unnamed_addr constant [6 x i8] c".mpeg\00", align 1
@.str389 = private unnamed_addr constant [5 x i8] c".mov\00", align 1
@.str390 = private unnamed_addr constant [16 x i8] c"video/quicktime\00", align 1
@.str391 = private unnamed_addr constant [5 x i8] c".mp4\00", align 1
@.str392 = private unnamed_addr constant [10 x i8] c"video/mp4\00", align 1
@.str393 = private unnamed_addr constant [5 x i8] c".m4v\00", align 1
@.str394 = private unnamed_addr constant [12 x i8] c"video/x-m4v\00", align 1
@.str395 = private unnamed_addr constant [5 x i8] c".asf\00", align 1
@.str396 = private unnamed_addr constant [15 x i8] c"video/x-ms-asf\00", align 1
@.str397 = private unnamed_addr constant [5 x i8] c".avi\00", align 1
@.str398 = private unnamed_addr constant [16 x i8] c"video/x-msvideo\00", align 1
@.str399 = private unnamed_addr constant [5 x i8] c".bmp\00", align 1
@.str400 = private unnamed_addr constant [10 x i8] c"image/bmp\00", align 1
@.str401 = private unnamed_addr constant [5 x i8] c".ttf\00", align 1
@.str402 = private unnamed_addr constant [23 x i8] c"application/x-font-ttf\00", align 1
@.str403 = private unnamed_addr constant [12 x i8] c"cgi_pattern\00", align 1
@.str404 = private unnamed_addr constant [23 x i8] c"**.cgi$|**.pl$|**.php$\00", align 1
@.str405 = private unnamed_addr constant [16 x i8] c"cgi_environment\00", align 1
@.str406 = private unnamed_addr constant [21 x i8] c"put_delete_auth_file\00", align 1
@.str407 = private unnamed_addr constant [16 x i8] c"cgi_interpreter\00", align 1
@.str408 = private unnamed_addr constant [12 x i8] c"protect_uri\00", align 1
@.str409 = private unnamed_addr constant [22 x i8] c"authentication_domain\00", align 1
@.str410 = private unnamed_addr constant [13 x i8] c"mydomain.com\00", align 1
@.str411 = private unnamed_addr constant [12 x i8] c"ssi_pattern\00", align 1
@.str412 = private unnamed_addr constant [19 x i8] c"**.shtml$|**.shtm$\00", align 1
@.str413 = private unnamed_addr constant [9 x i8] c"throttle\00", align 1
@.str414 = private unnamed_addr constant [16 x i8] c"access_log_file\00", align 1
@.str415 = private unnamed_addr constant [25 x i8] c"enable_directory_listing\00", align 1
@.str416 = private unnamed_addr constant [15 x i8] c"error_log_file\00", align 1
@.str417 = private unnamed_addr constant [17 x i8] c"global_auth_file\00", align 1
@.str418 = private unnamed_addr constant [12 x i8] c"index_files\00", align 1
@.str419 = private unnamed_addr constant [62 x i8] c"index.html,index.htm,index.cgi,index.shtml,index.php,index.lp\00", align 1
@.str420 = private unnamed_addr constant [18 x i8] c"enable_keep_alive\00", align 1
@.str421 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str422 = private unnamed_addr constant [20 x i8] c"access_control_list\00", align 1
@.str423 = private unnamed_addr constant [17 x i8] c"extra_mime_types\00", align 1
@.str424 = private unnamed_addr constant [16 x i8] c"listening_ports\00", align 1
@.str425 = private unnamed_addr constant [5 x i8] c"8080\00", align 1
@.str426 = private unnamed_addr constant [14 x i8] c"document_root\00", align 1
@.str427 = private unnamed_addr constant [16 x i8] c"ssl_certificate\00", align 1
@.str428 = private unnamed_addr constant [12 x i8] c"num_threads\00", align 1
@.str429 = private unnamed_addr constant [3 x i8] c"50\00", align 1
@.str430 = private unnamed_addr constant [12 x i8] c"run_as_user\00", align 1
@.str431 = private unnamed_addr constant [21 x i8] c"url_rewrite_patterns\00", align 1
@.str432 = private unnamed_addr constant [20 x i8] c"hide_files_patterns\00", align 1
@.str433 = private unnamed_addr constant [19 x i8] c"request_timeout_ms\00", align 1
@.str434 = private unnamed_addr constant [6 x i8] c"30000\00", align 1

define i8** @mg_get_valid_option_names() nounwind uwtable {
  ret i8** getelementptr inbounds ([49 x i8*]* @config_options, i32 0, i32 0)
}

define i8* @mg_get_option(%struct.mg_context* %ctx, i8* %name) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.mg_context*, align 8
  %3 = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.mg_context* %ctx, %struct.mg_context** %2, align 8
  store i8* %name, i8** %3, align 8
  %4 = load i8** %3, align 8
  %5 = call i32 @get_option_index(i8* %4)
  store i32 %5, i32* %i, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store i8* null, i8** %1
  br label %24

; <label>:8                                       ; preds = %0
  %9 = load i32* %i, align 4
  %10 = sext i32 %9 to i64
  %11 = load %struct.mg_context** %2, align 8
  %12 = getelementptr inbounds %struct.mg_context* %11, i32 0, i32 2
  %13 = getelementptr inbounds [24 x i8*]* %12, i32 0, i64 %10
  %14 = load i8** %13, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %8
  store i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8** %1
  br label %24

; <label>:17                                      ; preds = %8
  %18 = load i32* %i, align 4
  %19 = sext i32 %18 to i64
  %20 = load %struct.mg_context** %2, align 8
  %21 = getelementptr inbounds %struct.mg_context* %20, i32 0, i32 2
  %22 = getelementptr inbounds [24 x i8*]* %21, i32 0, i64 %19
  %23 = load i8** %22, align 8
  store i8* %23, i8** %1
  br label %24

; <label>:24                                      ; preds = %17, %16, %7
  %25 = load i8** %1
  ret i8* %25
}

define internal i32 @get_option_index(i8* %name) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %name, i8** %2, align 8
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %22, %0
  %4 = load i32* %i, align 4
  %5 = mul nsw i32 %4, 2
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [49 x i8*]* @config_options, i32 0, i64 %6
  %8 = load i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %25

; <label>:10                                      ; preds = %3
  %11 = load i32* %i, align 4
  %12 = mul nsw i32 %11, 2
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [49 x i8*]* @config_options, i32 0, i64 %13
  %15 = load i8** %14, align 8
  %16 = load i8** %2, align 8
  %17 = call i32 @strcmp(i8* %15, i8* %16) nounwind readonly
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

; <label>:19                                      ; preds = %10
  %20 = load i32* %i, align 4
  store i32 %20, i32* %1
  br label %26

; <label>:21                                      ; preds = %10
  br label %22

; <label>:22                                      ; preds = %21
  %23 = load i32* %i, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %i, align 4
  br label %3

; <label>:25                                      ; preds = %3
  store i32 -1, i32* %1
  br label %26

; <label>:26                                      ; preds = %25, %19
  %27 = load i32* %1
  ret i32 %27
}

define i8* @mg_version() nounwind uwtable {
  ret i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0)
}

define %struct.mg_request_info* @mg_get_request_info(%struct.mg_connection* %conn) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  %2 = load %struct.mg_connection** %1, align 8
  %3 = getelementptr inbounds %struct.mg_connection* %2, i32 0, i32 0
  ret %struct.mg_request_info* %3
}

define i8* @mg_get_header(%struct.mg_connection* %conn, i8* %name) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %name, i8** %2, align 8
  %3 = load %struct.mg_connection** %1, align 8
  %4 = getelementptr inbounds %struct.mg_connection* %3, i32 0, i32 0
  %5 = load i8** %2, align 8
  %6 = call i8* @get_header(%struct.mg_request_info* %4, i8* %5)
  ret i8* %6
}

define internal i8* @get_header(%struct.mg_request_info* %ri, i8* %name) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.mg_request_info*, align 8
  %3 = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.mg_request_info* %ri, %struct.mg_request_info** %2, align 8
  store i8* %name, i8** %3, align 8
  store i32 0, i32* %i, align 4
  br label %4

; <label>:4                                       ; preds = %30, %0
  %5 = load i32* %i, align 4
  %6 = load %struct.mg_request_info** %2, align 8
  %7 = getelementptr inbounds %struct.mg_request_info* %6, i32 0, i32 10
  %8 = load i32* %7, align 4
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %33

; <label>:10                                      ; preds = %4
  %11 = load i8** %3, align 8
  %12 = load i32* %i, align 4
  %13 = sext i32 %12 to i64
  %14 = load %struct.mg_request_info** %2, align 8
  %15 = getelementptr inbounds %struct.mg_request_info* %14, i32 0, i32 11
  %16 = getelementptr inbounds [64 x %struct.mg_header]* %15, i32 0, i64 %13
  %17 = getelementptr inbounds %struct.mg_header* %16, i32 0, i32 0
  %18 = load i8** %17, align 8
  %19 = call i32 @mg_strcasecmp(i8* %11, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

; <label>:21                                      ; preds = %10
  %22 = load i32* %i, align 4
  %23 = sext i32 %22 to i64
  %24 = load %struct.mg_request_info** %2, align 8
  %25 = getelementptr inbounds %struct.mg_request_info* %24, i32 0, i32 11
  %26 = getelementptr inbounds [64 x %struct.mg_header]* %25, i32 0, i64 %23
  %27 = getelementptr inbounds %struct.mg_header* %26, i32 0, i32 1
  %28 = load i8** %27, align 8
  store i8* %28, i8** %1
  br label %34

; <label>:29                                      ; preds = %10
  br label %30

; <label>:30                                      ; preds = %29
  %31 = load i32* %i, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %i, align 4
  br label %4

; <label>:33                                      ; preds = %4
  store i8* null, i8** %1
  br label %34

; <label>:34                                      ; preds = %33, %21
  %35 = load i8** %1
  ret i8* %35
}

define i32 @mg_start_thread(i8* (i8*)* %func, i8* %param) nounwind uwtable {
  %1 = alloca i8* (i8*)*, align 8
  %2 = alloca i8*, align 8
  %thread_id = alloca i64, align 8
  %attr = alloca %union.pthread_attr_t, align 8
  %result = alloca i32, align 4
  store i8* (i8*)* %func, i8* (i8*)** %1, align 8
  store i8* %param, i8** %2, align 8
  %3 = call i32 @pthread_attr_init(%union.pthread_attr_t* %attr) nounwind
  %4 = call i32 @pthread_attr_setdetachstate(%union.pthread_attr_t* %attr, i32 1) nounwind
  %5 = load i8* (i8*)** %1, align 8
  %6 = load i8** %2, align 8
  %7 = call i32 @pthread_create(i64* %thread_id, %union.pthread_attr_t* %attr, i8* (i8*)* %5, i8* %6) nounwind
  store i32 %7, i32* %result, align 4
  %8 = call i32 @pthread_attr_destroy(%union.pthread_attr_t* %attr) nounwind
  %9 = load i32* %result, align 4
  ret i32 %9
}

declare i32 @pthread_attr_init(%union.pthread_attr_t*) nounwind

declare i32 @pthread_attr_setdetachstate(%union.pthread_attr_t*, i32) nounwind

declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) nounwind

declare i32 @pthread_attr_destroy(%union.pthread_attr_t*) nounwind

define i32 @mg_read(%struct.mg_connection* %conn, i8* %buf, i64 %len) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %n = alloca i32, align 4
  %buffered_len = alloca i32, align 4
  %nread = alloca i32, align 4
  %body = alloca i8*, align 8
  %to_read = alloca i64, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %buf, i8** %2, align 8
  store i64 %len, i64* %3, align 8
  %4 = load %struct.mg_connection** %1, align 8
  %5 = getelementptr inbounds %struct.mg_connection* %4, i32 0, i32 8
  %6 = load i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %18

; <label>:8                                       ; preds = %0
  %9 = load %struct.mg_connection** %1, align 8
  %10 = getelementptr inbounds %struct.mg_connection* %9, i32 0, i32 7
  %11 = load i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18

; <label>:13                                      ; preds = %8
  %14 = load %struct.mg_connection** %1, align 8
  %15 = getelementptr inbounds %struct.mg_connection* %14, i32 0, i32 7
  store i64 9223372036854775807, i64* %15, align 8
  %16 = load %struct.mg_connection** %1, align 8
  %17 = getelementptr inbounds %struct.mg_connection* %16, i32 0, i32 11
  store i32 1, i32* %17, align 4
  br label %18

; <label>:18                                      ; preds = %13, %8, %0
  store i32 0, i32* %nread, align 4
  %19 = load %struct.mg_connection** %1, align 8
  %20 = getelementptr inbounds %struct.mg_connection* %19, i32 0, i32 8
  %21 = load i64* %20, align 8
  %22 = load %struct.mg_connection** %1, align 8
  %23 = getelementptr inbounds %struct.mg_connection* %22, i32 0, i32 7
  %24 = load i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %113

; <label>:26                                      ; preds = %18
  %27 = load %struct.mg_connection** %1, align 8
  %28 = getelementptr inbounds %struct.mg_connection* %27, i32 0, i32 7
  %29 = load i64* %28, align 8
  %30 = load %struct.mg_connection** %1, align 8
  %31 = getelementptr inbounds %struct.mg_connection* %30, i32 0, i32 8
  %32 = load i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  store i64 %33, i64* %to_read, align 8
  %34 = load i64* %to_read, align 8
  %35 = load i64* %3, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %39

; <label>:37                                      ; preds = %26
  %38 = load i64* %to_read, align 8
  store i64 %38, i64* %3, align 8
  br label %39

; <label>:39                                      ; preds = %37, %26
  %40 = load %struct.mg_connection** %1, align 8
  %41 = getelementptr inbounds %struct.mg_connection* %40, i32 0, i32 9
  %42 = load i8** %41, align 8
  %43 = load %struct.mg_connection** %1, align 8
  %44 = getelementptr inbounds %struct.mg_connection* %43, i32 0, i32 13
  %45 = load i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8* %42, i64 %46
  %48 = load %struct.mg_connection** %1, align 8
  %49 = getelementptr inbounds %struct.mg_connection* %48, i32 0, i32 8
  %50 = load i64* %49, align 8
  %51 = getelementptr inbounds i8* %47, i64 %50
  store i8* %51, i8** %body, align 8
  %52 = load %struct.mg_connection** %1, align 8
  %53 = getelementptr inbounds %struct.mg_connection* %52, i32 0, i32 14
  %54 = load i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = load %struct.mg_connection** %1, align 8
  %57 = getelementptr inbounds %struct.mg_connection* %56, i32 0, i32 9
  %58 = load i8** %57, align 8
  %59 = getelementptr inbounds i8* %58, i64 %55
  %60 = load i8** %body, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %buffered_len, align 4
  %65 = load i32* %buffered_len, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %97

; <label>:67                                      ; preds = %39
  %68 = load i64* %3, align 8
  %69 = load i32* %buffered_len, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp ult i64 %68, %70
  br i1 %71, label %72, label %75

; <label>:72                                      ; preds = %67
  %73 = load i64* %3, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %buffered_len, align 4
  br label %75

; <label>:75                                      ; preds = %72, %67
  %76 = load i8** %2, align 8
  %77 = load i8** %body, align 8
  %78 = load i32* %buffered_len, align 4
  %79 = sext i32 %78 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 %79, i32 1, i1 false)
  %80 = load i32* %buffered_len, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64* %3, align 8
  %83 = sub i64 %82, %81
  store i64 %83, i64* %3, align 8
  %84 = load i32* %buffered_len, align 4
  %85 = sext i32 %84 to i64
  %86 = load %struct.mg_connection** %1, align 8
  %87 = getelementptr inbounds %struct.mg_connection* %86, i32 0, i32 8
  %88 = load i64* %87, align 8
  %89 = add nsw i64 %88, %85
  store i64 %89, i64* %87, align 8
  %90 = load i32* %buffered_len, align 4
  %91 = load i32* %nread, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %nread, align 4
  %93 = load i8** %2, align 8
  %94 = load i32* %buffered_len, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8* %93, i64 %95
  store i8* %96, i8** %2, align 8
  br label %97

; <label>:97                                      ; preds = %75, %39
  %98 = load %struct.mg_connection** %1, align 8
  %99 = load i8** %2, align 8
  %100 = load i64* %3, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 @pull_all(%struct._IO_FILE* null, %struct.mg_connection* %98, i8* %99, i32 %101)
  store i32 %102, i32* %n, align 4
  %103 = load i32* %n, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %109

; <label>:105                                     ; preds = %97
  %106 = load i32* %nread, align 4
  %107 = load i32* %n, align 4
  %108 = add nsw i32 %106, %107
  br label %111

; <label>:109                                     ; preds = %97
  %110 = load i32* %n, align 4
  br label %111

; <label>:111                                     ; preds = %109, %105
  %112 = phi i32 [ %108, %105 ], [ %110, %109 ]
  store i32 %112, i32* %nread, align 4
  br label %113

; <label>:113                                     ; preds = %111, %18
  %114 = load i32* %nread, align 4
  ret i32 %114
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

define internal i32 @pull_all(%struct._IO_FILE* %fp, %struct.mg_connection* %conn, i8* %buf, i32 %len) nounwind uwtable {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %n = alloca i32, align 4
  %nread = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %1, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %2, align 8
  store i8* %buf, i8** %3, align 8
  store i32 %len, i32* %4, align 4
  store i32 0, i32* %nread, align 4
  br label %5

; <label>:5                                       ; preds = %48, %0
  %6 = load i32* %4, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %15

; <label>:8                                       ; preds = %5
  %9 = load %struct.mg_connection** %2, align 8
  %10 = getelementptr inbounds %struct.mg_connection* %9, i32 0, i32 1
  %11 = load %struct.mg_context** %10, align 8
  %12 = getelementptr inbounds %struct.mg_context* %11, i32 0, i32 0
  %13 = load volatile i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br label %15

; <label>:15                                      ; preds = %8, %5
  %16 = phi i1 [ false, %5 ], [ %14, %8 ]
  br i1 %16, label %17, label %49

; <label>:17                                      ; preds = %15
  %18 = load %struct._IO_FILE** %1, align 8
  %19 = load %struct.mg_connection** %2, align 8
  %20 = load i8** %3, align 8
  %21 = load i32* %nread, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8* %20, i64 %22
  %24 = load i32* %4, align 4
  %25 = call i32 @pull(%struct._IO_FILE* %18, %struct.mg_connection* %19, i8* %23, i32 %24)
  store i32 %25, i32* %n, align 4
  %26 = load i32* %n, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

; <label>:28                                      ; preds = %17
  %29 = load i32* %n, align 4
  store i32 %29, i32* %nread, align 4
  br label %49

; <label>:30                                      ; preds = %17
  %31 = load i32* %n, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %30
  br label %49

; <label>:34                                      ; preds = %30
  %35 = load i32* %n, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.mg_connection** %2, align 8
  %38 = getelementptr inbounds %struct.mg_connection* %37, i32 0, i32 8
  %39 = load i64* %38, align 8
  %40 = add nsw i64 %39, %36
  store i64 %40, i64* %38, align 8
  %41 = load i32* %n, align 4
  %42 = load i32* %nread, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %nread, align 4
  %44 = load i32* %n, align 4
  %45 = load i32* %4, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %47

; <label>:47                                      ; preds = %34
  br label %48

; <label>:48                                      ; preds = %47
  br label %5

; <label>:49                                      ; preds = %33, %28, %15
  %50 = load i32* %nread, align 4
  ret i32 %50
}

define i32 @mg_write(%struct.mg_connection* %conn, i8* %buf, i64 %len) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %now = alloca i64, align 8
  %n = alloca i64, align 8
  %total = alloca i64, align 8
  %allowed = alloca i64, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %buf, i8** %2, align 8
  store i64 %len, i64* %3, align 8
  %4 = load %struct.mg_connection** %1, align 8
  %5 = getelementptr inbounds %struct.mg_connection* %4, i32 0, i32 16
  %6 = load i32* %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %118

; <label>:8                                       ; preds = %0
  %9 = call i64 @time(i64* null) nounwind
  store i64 %9, i64* %now, align 8
  %10 = load %struct.mg_connection** %1, align 8
  %11 = getelementptr inbounds %struct.mg_connection* %10, i32 0, i32 17
  %12 = load i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %20

; <label>:14                                      ; preds = %8
  %15 = load i64* %now, align 8
  %16 = load %struct.mg_connection** %1, align 8
  %17 = getelementptr inbounds %struct.mg_connection* %16, i32 0, i32 17
  store i64 %15, i64* %17, align 8
  %18 = load %struct.mg_connection** %1, align 8
  %19 = getelementptr inbounds %struct.mg_connection* %18, i32 0, i32 18
  store i64 0, i64* %19, align 8
  br label %20

; <label>:20                                      ; preds = %14, %8
  %21 = load %struct.mg_connection** %1, align 8
  %22 = getelementptr inbounds %struct.mg_connection* %21, i32 0, i32 16
  %23 = load i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = load %struct.mg_connection** %1, align 8
  %26 = getelementptr inbounds %struct.mg_connection* %25, i32 0, i32 18
  %27 = load i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  store i64 %28, i64* %allowed, align 8
  %29 = load i64* %allowed, align 8
  %30 = load i64* %3, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %34

; <label>:32                                      ; preds = %20
  %33 = load i64* %3, align 8
  store i64 %33, i64* %allowed, align 8
  br label %34

; <label>:34                                      ; preds = %32, %20
  %35 = load %struct.mg_connection** %1, align 8
  %36 = getelementptr inbounds %struct.mg_connection* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.socket* %36, i32 0, i32 0
  %38 = load i32* %37, align 4
  %39 = load %struct.mg_connection** %1, align 8
  %40 = getelementptr inbounds %struct.mg_connection* %39, i32 0, i32 2
  %41 = load %struct.ssl_st** %40, align 8
  %42 = load i8** %2, align 8
  %43 = load i64* %allowed, align 8
  %44 = call i64 @push(%struct._IO_FILE* null, i32 %38, %struct.ssl_st* %41, i8* %42, i64 %43)
  store i64 %44, i64* %total, align 8
  %45 = load i64* %allowed, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %117

; <label>:47                                      ; preds = %34
  %48 = load i8** %2, align 8
  %49 = load i64* %total, align 8
  %50 = getelementptr inbounds i8* %48, i64 %49
  store i8* %50, i8** %2, align 8
  %51 = load i64* %total, align 8
  %52 = load %struct.mg_connection** %1, align 8
  %53 = getelementptr inbounds %struct.mg_connection* %52, i32 0, i32 18
  %54 = load i64* %53, align 8
  %55 = add nsw i64 %54, %51
  store i64 %55, i64* %53, align 8
  br label %56

; <label>:56                                      ; preds = %102, %47
  %57 = load i64* %total, align 8
  %58 = load i64* %3, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %67

; <label>:60                                      ; preds = %56
  %61 = load %struct.mg_connection** %1, align 8
  %62 = getelementptr inbounds %struct.mg_connection* %61, i32 0, i32 1
  %63 = load %struct.mg_context** %62, align 8
  %64 = getelementptr inbounds %struct.mg_context* %63, i32 0, i32 0
  %65 = load volatile i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  br label %67

; <label>:67                                      ; preds = %60, %56
  %68 = phi i1 [ false, %56 ], [ %66, %60 ]
  br i1 %68, label %69, label %116

; <label>:69                                      ; preds = %67
  %70 = load %struct.mg_connection** %1, align 8
  %71 = getelementptr inbounds %struct.mg_connection* %70, i32 0, i32 16
  %72 = load i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64* %3, align 8
  %75 = load i64* %total, align 8
  %76 = sub nsw i64 %74, %75
  %77 = icmp sgt i64 %73, %76
  br i1 %77, label %78, label %82

; <label>:78                                      ; preds = %69
  %79 = load i64* %3, align 8
  %80 = load i64* %total, align 8
  %81 = sub nsw i64 %79, %80
  br label %87

; <label>:82                                      ; preds = %69
  %83 = load %struct.mg_connection** %1, align 8
  %84 = getelementptr inbounds %struct.mg_connection* %83, i32 0, i32 16
  %85 = load i32* %84, align 4
  %86 = sext i32 %85 to i64
  br label %87

; <label>:87                                      ; preds = %82, %78
  %88 = phi i64 [ %81, %78 ], [ %86, %82 ]
  store i64 %88, i64* %allowed, align 8
  %89 = load %struct.mg_connection** %1, align 8
  %90 = getelementptr inbounds %struct.mg_connection* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.socket* %90, i32 0, i32 0
  %92 = load i32* %91, align 4
  %93 = load %struct.mg_connection** %1, align 8
  %94 = getelementptr inbounds %struct.mg_connection* %93, i32 0, i32 2
  %95 = load %struct.ssl_st** %94, align 8
  %96 = load i8** %2, align 8
  %97 = load i64* %allowed, align 8
  %98 = call i64 @push(%struct._IO_FILE* null, i32 %92, %struct.ssl_st* %95, i8* %96, i64 %97)
  store i64 %98, i64* %n, align 8
  %99 = load i64* %allowed, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %102

; <label>:101                                     ; preds = %87
  br label %116

; <label>:102                                     ; preds = %87
  %103 = call i32 @sleep(i32 1)
  %104 = load i64* %allowed, align 8
  %105 = load %struct.mg_connection** %1, align 8
  %106 = getelementptr inbounds %struct.mg_connection* %105, i32 0, i32 18
  store i64 %104, i64* %106, align 8
  %107 = call i64 @time(i64* null) nounwind
  %108 = load %struct.mg_connection** %1, align 8
  %109 = getelementptr inbounds %struct.mg_connection* %108, i32 0, i32 17
  store i64 %107, i64* %109, align 8
  %110 = load i8** %2, align 8
  %111 = load i64* %n, align 8
  %112 = getelementptr inbounds i8* %110, i64 %111
  store i8* %112, i8** %2, align 8
  %113 = load i64* %n, align 8
  %114 = load i64* %total, align 8
  %115 = add nsw i64 %114, %113
  store i64 %115, i64* %total, align 8
  br label %56

; <label>:116                                     ; preds = %101, %67
  br label %117

; <label>:117                                     ; preds = %116, %34
  br label %129

; <label>:118                                     ; preds = %0
  %119 = load %struct.mg_connection** %1, align 8
  %120 = getelementptr inbounds %struct.mg_connection* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.socket* %120, i32 0, i32 0
  %122 = load i32* %121, align 4
  %123 = load %struct.mg_connection** %1, align 8
  %124 = getelementptr inbounds %struct.mg_connection* %123, i32 0, i32 2
  %125 = load %struct.ssl_st** %124, align 8
  %126 = load i8** %2, align 8
  %127 = load i64* %3, align 8
  %128 = call i64 @push(%struct._IO_FILE* null, i32 %122, %struct.ssl_st* %125, i8* %126, i64 %127)
  store i64 %128, i64* %total, align 8
  br label %129

; <label>:129                                     ; preds = %118, %117
  %130 = load i64* %total, align 8
  %131 = trunc i64 %130 to i32
  ret i32 %131
}

declare i64 @time(i64*) nounwind

define internal i64 @push(%struct._IO_FILE* %fp, i32 %sock, %struct.ssl_st* %ssl, i8* %buf, i64 %len) nounwind uwtable {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssl_st*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %sent = alloca i64, align 8
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %1, align 8
  store i32 %sock, i32* %2, align 4
  store %struct.ssl_st* %ssl, %struct.ssl_st** %3, align 8
  store i8* %buf, i8** %4, align 8
  store i64 %len, i64* %5, align 8
  %6 = load %struct.ssl_st** %3, align 8
  store i64 0, i64* %sent, align 8
  br label %7

; <label>:7                                       ; preds = %66, %0
  %8 = load i64* %sent, align 8
  %9 = load i64* %5, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %71

; <label>:11                                      ; preds = %7
  %12 = load i64* %5, align 8
  %13 = load i64* %sent, align 8
  %14 = sub nsw i64 %12, %13
  %15 = icmp sgt i64 %14, 2147483647
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %11
  br label %22

; <label>:17                                      ; preds = %11
  %18 = load i64* %5, align 8
  %19 = load i64* %sent, align 8
  %20 = sub nsw i64 %18, %19
  %21 = trunc i64 %20 to i32
  br label %22

; <label>:22                                      ; preds = %17, %16
  %23 = phi i32 [ 2147483647, %16 ], [ %21, %17 ]
  store i32 %23, i32* %k, align 4
  %24 = load %struct.ssl_st** %3, align 8
  %25 = icmp ne %struct.ssl_st* %24, null
  br i1 %25, label %26, label %35

; <label>:26                                      ; preds = %22
  %27 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 4, i32 1), align 8
  %28 = bitcast void ()* %27 to i32 (%struct.ssl_st*, i8*, i32)*
  %29 = load %struct.ssl_st** %3, align 8
  %30 = load i8** %4, align 8
  %31 = load i64* %sent, align 8
  %32 = getelementptr inbounds i8* %30, i64 %31
  %33 = load i32* %k, align 4
  %34 = call i32 %28(%struct.ssl_st* %29, i8* %32, i32 %33)
  store i32 %34, i32* %n, align 4
  br label %62

; <label>:35                                      ; preds = %22
  %36 = load %struct._IO_FILE** %1, align 8
  %37 = icmp ne %struct._IO_FILE* %36, null
  br i1 %37, label %38, label %52

; <label>:38                                      ; preds = %35
  %39 = load i8** %4, align 8
  %40 = load i64* %sent, align 8
  %41 = getelementptr inbounds i8* %39, i64 %40
  %42 = load i32* %k, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct._IO_FILE** %1, align 8
  %45 = call i64 @fwrite(i8* %41, i64 1, i64 %43, %struct._IO_FILE* %44)
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %n, align 4
  %47 = load %struct._IO_FILE** %1, align 8
  %48 = call i32 @ferror(%struct._IO_FILE* %47) nounwind
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %38
  store i32 -1, i32* %n, align 4
  br label %51

; <label>:51                                      ; preds = %50, %38
  br label %61

; <label>:52                                      ; preds = %35
  %53 = load i32* %2, align 4
  %54 = load i8** %4, align 8
  %55 = load i64* %sent, align 8
  %56 = getelementptr inbounds i8* %54, i64 %55
  %57 = load i32* %k, align 4
  %58 = sext i32 %57 to i64
  %59 = call i64 @send(i32 %53, i8* %56, i64 %58, i32 16384)
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %n, align 4
  br label %61

; <label>:61                                      ; preds = %52, %51
  br label %62

; <label>:62                                      ; preds = %61, %26
  %63 = load i32* %n, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %66

; <label>:65                                      ; preds = %62
  br label %71

; <label>:66                                      ; preds = %62
  %67 = load i32* %n, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64* %sent, align 8
  %70 = add nsw i64 %69, %68
  store i64 %70, i64* %sent, align 8
  br label %7

; <label>:71                                      ; preds = %65, %7
  %72 = load i64* %sent, align 8
  ret i64 %72
}

declare i32 @sleep(i32)

define i32 @mg_vprintf(%struct.mg_connection* %conn, i8* %fmt, %struct.__va_list_tag* %ap) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.__va_list_tag*, align 8
  %mem = alloca [8192 x i8], align 16
  %buf = alloca i8*, align 8
  %len = alloca i32, align 4
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %fmt, i8** %2, align 8
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %3, align 8
  %4 = getelementptr inbounds [8192 x i8]* %mem, i32 0, i32 0
  store i8* %4, i8** %buf, align 8
  %5 = load i8** %2, align 8
  %6 = load %struct.__va_list_tag** %3, align 8
  %7 = call i32 @alloc_vprintf(i8** %buf, i64 8192, i8* %5, %struct.__va_list_tag* %6)
  store i32 %7, i32* %len, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %15

; <label>:9                                       ; preds = %0
  %10 = load %struct.mg_connection** %1, align 8
  %11 = load i8** %buf, align 8
  %12 = load i32* %len, align 4
  %13 = sext i32 %12 to i64
  %14 = call i32 @mg_write(%struct.mg_connection* %10, i8* %11, i64 %13)
  store i32 %14, i32* %len, align 4
  br label %15

; <label>:15                                      ; preds = %9, %0
  %16 = load i8** %buf, align 8
  %17 = getelementptr inbounds [8192 x i8]* %mem, i32 0, i32 0
  %18 = icmp ne i8* %16, %17
  br i1 %18, label %19, label %24

; <label>:19                                      ; preds = %15
  %20 = load i8** %buf, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %24

; <label>:22                                      ; preds = %19
  %23 = load i8** %buf, align 8
  call void @free(i8* %23) nounwind
  br label %24

; <label>:24                                      ; preds = %22, %19, %15
  %25 = load i32* %len, align 4
  ret i32 %25
}

define internal i32 @alloc_vprintf(i8** %buf, i64 %size, i8* %fmt, %struct.__va_list_tag* %ap) nounwind uwtable {
  %1 = alloca i8**, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.__va_list_tag*, align 8
  %ap_copy = alloca [1 x %struct.__va_list_tag], align 16
  %len = alloca i32, align 4
  store i8** %buf, i8*** %1, align 8
  store i64 %size, i64* %2, align 8
  store i8* %fmt, i8** %3, align 8
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %4, align 8
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap_copy, i32 0, i32 0
  %6 = load %struct.__va_list_tag** %4, align 8
  %7 = bitcast %struct.__va_list_tag* %5 to i8*
  %8 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_copy(i8* %7, i8* %8)
  %9 = load i8** %3, align 8
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap_copy, i32 0, i32 0
  %11 = call i32 @vsnprintf(i8* null, i64 0, i8* %9, %struct.__va_list_tag* %10) nounwind
  store i32 %11, i32* %len, align 4
  %12 = load i32* %len, align 4
  %13 = load i64* %2, align 8
  %14 = trunc i64 %13 to i32
  %15 = icmp sgt i32 %12, %14
  br i1 %15, label %16, label %27

; <label>:16                                      ; preds = %0
  %17 = load i32* %len, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %2, align 8
  %20 = icmp ugt i64 %19, 0
  br i1 %20, label %21, label %27

; <label>:21                                      ; preds = %16
  %22 = load i64* %2, align 8
  %23 = call noalias i8* @malloc(i64 %22) nounwind
  %24 = load i8*** %1, align 8
  store i8* %23, i8** %24
  %25 = icmp eq i8* %23, null
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %21
  store i32 -1, i32* %len, align 4
  br label %38

; <label>:27                                      ; preds = %21, %16, %0
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap_copy, i32 0, i32 0
  %29 = load %struct.__va_list_tag** %4, align 8
  %30 = bitcast %struct.__va_list_tag* %28 to i8*
  %31 = bitcast %struct.__va_list_tag* %29 to i8*
  call void @llvm.va_copy(i8* %30, i8* %31)
  %32 = load i8*** %1, align 8
  %33 = load i8** %32
  %34 = load i64* %2, align 8
  %35 = load i8** %3, align 8
  %36 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap_copy, i32 0, i32 0
  %37 = call i32 @vsnprintf(i8* %33, i64 %34, i8* %35, %struct.__va_list_tag* %36) nounwind
  br label %38

; <label>:38                                      ; preds = %27, %26
  %39 = load i32* %len, align 4
  ret i32 %39
}

declare void @free(i8*) nounwind

define i32 @mg_printf(%struct.mg_connection* %conn, i8* %fmt, ...) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %fmt, i8** %2, align 8
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %4 = bitcast %struct.__va_list_tag* %3 to i8*
  call void @llvm.va_start(i8* %4)
  %5 = load %struct.mg_connection** %1, align 8
  %6 = load i8** %2, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %8 = call i32 @mg_vprintf(%struct.mg_connection* %5, i8* %6, %struct.__va_list_tag* %7)
  ret i32 %8
}

declare void @llvm.va_start(i8*) nounwind

define i32 @mg_chunked_printf(%struct.mg_connection* %conn, i8* %fmt, ...) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %mem = alloca [8192 x i8], align 16
  %buf = alloca i8*, align 8
  %len = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %fmt, i8** %2, align 8
  %3 = getelementptr inbounds [8192 x i8]* %mem, i32 0, i32 0
  store i8* %3, i8** %buf, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = load i8** %2, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %8 = call i32 @alloc_vprintf(i8** %buf, i64 8192, i8* %6, %struct.__va_list_tag* %7)
  store i32 %8, i32* %len, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %15

; <label>:10                                      ; preds = %0
  %11 = load %struct.mg_connection** %1, align 8
  %12 = load i32* %len, align 4
  %13 = load i8** %buf, align 8
  %14 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %11, i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0), i32 %12, i8* %13)
  store i32 %14, i32* %len, align 4
  br label %15

; <label>:15                                      ; preds = %10, %0
  %16 = load i8** %buf, align 8
  %17 = getelementptr inbounds [8192 x i8]* %mem, i32 0, i32 0
  %18 = icmp ne i8* %16, %17
  br i1 %18, label %19, label %24

; <label>:19                                      ; preds = %15
  %20 = load i8** %buf, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %24

; <label>:22                                      ; preds = %19
  %23 = load i8** %buf, align 8
  call void @free(i8* %23) nounwind
  br label %24

; <label>:24                                      ; preds = %22, %19, %15
  %25 = load i32* %len, align 4
  ret i32 %25
}

define i32 @mg_url_decode(i8* %src, i32 %src_len, i8* %dst, i32 %dst_len, i32 %is_form_url_encoded) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i8* %src, i8** %1, align 8
  store i32 %src_len, i32* %2, align 4
  store i8* %dst, i8** %3, align 8
  store i32 %dst_len, i32* %4, align 4
  store i32 %is_form_url_encoded, i32* %5, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %6

; <label>:6                                       ; preds = %150, %0
  %7 = load i32* %i, align 4
  %8 = load i32* %2, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %15

; <label>:10                                      ; preds = %6
  %11 = load i32* %j, align 4
  %12 = load i32* %4, align 4
  %13 = sub nsw i32 %12, 1
  %14 = icmp slt i32 %11, %13
  br label %15

; <label>:15                                      ; preds = %10, %6
  %16 = phi i1 [ false, %6 ], [ %14, %10 ]
  br i1 %16, label %17, label %155

; <label>:17                                      ; preds = %15
  %18 = load i32* %i, align 4
  %19 = sext i32 %18 to i64
  %20 = load i8** %1, align 8
  %21 = getelementptr inbounds i8* %20, i64 %19
  %22 = load i8* %21
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 37
  br i1 %24, label %25, label %122

; <label>:25                                      ; preds = %17
  %26 = load i32* %i, align 4
  %27 = load i32* %2, align 4
  %28 = sub nsw i32 %27, 2
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %122

; <label>:30                                      ; preds = %25
  %31 = load i8** %1, align 8
  %32 = load i32* %i, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8* %31, i64 %33
  %35 = getelementptr inbounds i8* %34, i64 1
  %36 = load i8* %35
  %37 = zext i8 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = call i16** @__ctype_b_loc() nounwind readnone
  %40 = load i16** %39
  %41 = getelementptr inbounds i16* %40, i64 %38
  %42 = load i16* %41
  %43 = zext i16 %42 to i32
  %44 = and i32 %43, 4096
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %122

; <label>:46                                      ; preds = %30
  %47 = load i8** %1, align 8
  %48 = load i32* %i, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8* %47, i64 %49
  %51 = getelementptr inbounds i8* %50, i64 2
  %52 = load i8* %51
  %53 = zext i8 %52 to i32
  %54 = sext i32 %53 to i64
  %55 = call i16** @__ctype_b_loc() nounwind readnone
  %56 = load i16** %55
  %57 = getelementptr inbounds i16* %56, i64 %54
  %58 = load i16* %57
  %59 = zext i16 %58 to i32
  %60 = and i32 %59, 4096
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %122

; <label>:62                                      ; preds = %46
  %63 = load i8** %1, align 8
  %64 = load i32* %i, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8* %63, i64 %65
  %67 = getelementptr inbounds i8* %66, i64 1
  %68 = load i8* %67
  %69 = zext i8 %68 to i32
  %70 = call i32 @tolower(i32 %69) nounwind
  store i32 %70, i32* %a, align 4
  %71 = load i8** %1, align 8
  %72 = load i32* %i, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8* %71, i64 %73
  %75 = getelementptr inbounds i8* %74, i64 2
  %76 = load i8* %75
  %77 = zext i8 %76 to i32
  %78 = call i32 @tolower(i32 %77) nounwind
  store i32 %78, i32* %b, align 4
  %79 = load i32* %a, align 4
  %80 = sext i32 %79 to i64
  %81 = call i16** @__ctype_b_loc() nounwind readnone
  %82 = load i16** %81
  %83 = getelementptr inbounds i16* %82, i64 %80
  %84 = load i16* %83
  %85 = zext i16 %84 to i32
  %86 = and i32 %85, 2048
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

; <label>:88                                      ; preds = %62
  %89 = load i32* %a, align 4
  %90 = sub nsw i32 %89, 48
  br label %94

; <label>:91                                      ; preds = %62
  %92 = load i32* %a, align 4
  %93 = sub nsw i32 %92, 87
  br label %94

; <label>:94                                      ; preds = %91, %88
  %95 = phi i32 [ %90, %88 ], [ %93, %91 ]
  %96 = shl i32 %95, 4
  %97 = load i32* %b, align 4
  %98 = sext i32 %97 to i64
  %99 = call i16** @__ctype_b_loc() nounwind readnone
  %100 = load i16** %99
  %101 = getelementptr inbounds i16* %100, i64 %98
  %102 = load i16* %101
  %103 = zext i16 %102 to i32
  %104 = and i32 %103, 2048
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

; <label>:106                                     ; preds = %94
  %107 = load i32* %b, align 4
  %108 = sub nsw i32 %107, 48
  br label %112

; <label>:109                                     ; preds = %94
  %110 = load i32* %b, align 4
  %111 = sub nsw i32 %110, 87
  br label %112

; <label>:112                                     ; preds = %109, %106
  %113 = phi i32 [ %108, %106 ], [ %111, %109 ]
  %114 = or i32 %96, %113
  %115 = trunc i32 %114 to i8
  %116 = load i32* %j, align 4
  %117 = sext i32 %116 to i64
  %118 = load i8** %3, align 8
  %119 = getelementptr inbounds i8* %118, i64 %117
  store i8 %115, i8* %119
  %120 = load i32* %i, align 4
  %121 = add nsw i32 %120, 2
  store i32 %121, i32* %i, align 4
  br label %149

; <label>:122                                     ; preds = %46, %30, %25, %17
  %123 = load i32* %5, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %138

; <label>:125                                     ; preds = %122
  %126 = load i32* %i, align 4
  %127 = sext i32 %126 to i64
  %128 = load i8** %1, align 8
  %129 = getelementptr inbounds i8* %128, i64 %127
  %130 = load i8* %129
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 43
  br i1 %132, label %133, label %138

; <label>:133                                     ; preds = %125
  %134 = load i32* %j, align 4
  %135 = sext i32 %134 to i64
  %136 = load i8** %3, align 8
  %137 = getelementptr inbounds i8* %136, i64 %135
  store i8 32, i8* %137
  br label %148

; <label>:138                                     ; preds = %125, %122
  %139 = load i32* %i, align 4
  %140 = sext i32 %139 to i64
  %141 = load i8** %1, align 8
  %142 = getelementptr inbounds i8* %141, i64 %140
  %143 = load i8* %142
  %144 = load i32* %j, align 4
  %145 = sext i32 %144 to i64
  %146 = load i8** %3, align 8
  %147 = getelementptr inbounds i8* %146, i64 %145
  store i8 %143, i8* %147
  br label %148

; <label>:148                                     ; preds = %138, %133
  br label %149

; <label>:149                                     ; preds = %148, %112
  br label %150

; <label>:150                                     ; preds = %149
  %151 = load i32* %i, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %i, align 4
  %153 = load i32* %j, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %j, align 4
  br label %6

; <label>:155                                     ; preds = %15
  %156 = load i32* %j, align 4
  %157 = sext i32 %156 to i64
  %158 = load i8** %3, align 8
  %159 = getelementptr inbounds i8* %158, i64 %157
  store i8 0, i8* %159
  %160 = load i32* %i, align 4
  %161 = load i32* %2, align 4
  %162 = icmp sge i32 %160, %161
  br i1 %162, label %163, label %165

; <label>:163                                     ; preds = %155
  %164 = load i32* %j, align 4
  br label %166

; <label>:165                                     ; preds = %155
  br label %166

; <label>:166                                     ; preds = %165, %163
  %167 = phi i32 [ %164, %163 ], [ -1, %165 ]
  ret i32 %167
}

declare i16** @__ctype_b_loc() nounwind readnone

declare i32 @tolower(i32) nounwind

define i32 @mg_get_var(i8* %data, i64 %data_len, i8* %name, i8* %dst, i64 %dst_len) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %p = alloca i8*, align 8
  %e = alloca i8*, align 8
  %s = alloca i8*, align 8
  %name_len = alloca i64, align 8
  %len = alloca i32, align 4
  store i8* %data, i8** %1, align 8
  store i64 %data_len, i64* %2, align 8
  store i8* %name, i8** %3, align 8
  store i8* %dst, i8** %4, align 8
  store i64 %dst_len, i64* %5, align 8
  %6 = load i8** %4, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %11, label %8

; <label>:8                                       ; preds = %0
  %9 = load i64* %5, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %8, %0
  store i32 -2, i32* %len, align 4
  br label %107

; <label>:12                                      ; preds = %8
  %13 = load i8** %1, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %21, label %15

; <label>:15                                      ; preds = %12
  %16 = load i8** %3, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %21, label %18

; <label>:18                                      ; preds = %15
  %19 = load i64* %2, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

; <label>:21                                      ; preds = %18, %15, %12
  store i32 -1, i32* %len, align 4
  %22 = load i8** %4, align 8
  %23 = getelementptr inbounds i8* %22, i64 0
  store i8 0, i8* %23
  br label %106

; <label>:24                                      ; preds = %18
  %25 = load i8** %3, align 8
  %26 = call i64 @strlen(i8* %25) nounwind readonly
  store i64 %26, i64* %name_len, align 8
  %27 = load i8** %1, align 8
  %28 = load i64* %2, align 8
  %29 = getelementptr inbounds i8* %27, i64 %28
  store i8* %29, i8** %e, align 8
  store i32 -1, i32* %len, align 4
  %30 = load i8** %4, align 8
  %31 = getelementptr inbounds i8* %30, i64 0
  store i8 0, i8* %31
  %32 = load i8** %1, align 8
  store i8* %32, i8** %p, align 8
  br label %33

; <label>:33                                      ; preds = %102, %24
  %34 = load i8** %p, align 8
  %35 = load i64* %name_len, align 8
  %36 = getelementptr inbounds i8* %34, i64 %35
  %37 = load i8** %e, align 8
  %38 = icmp ult i8* %36, %37
  br i1 %38, label %39, label %105

; <label>:39                                      ; preds = %33
  %40 = load i8** %p, align 8
  %41 = load i8** %1, align 8
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %49, label %43

; <label>:43                                      ; preds = %39
  %44 = load i8** %p, align 8
  %45 = getelementptr inbounds i8* %44, i64 -1
  %46 = load i8* %45
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 38
  br i1 %48, label %49, label %101

; <label>:49                                      ; preds = %43, %39
  %50 = load i64* %name_len, align 8
  %51 = load i8** %p, align 8
  %52 = getelementptr inbounds i8* %51, i64 %50
  %53 = load i8* %52
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 61
  br i1 %55, label %56, label %101

; <label>:56                                      ; preds = %49
  %57 = load i8** %3, align 8
  %58 = load i8** %p, align 8
  %59 = load i64* %name_len, align 8
  %60 = call i32 @mg_strncasecmp(i8* %57, i8* %58, i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %101, label %62

; <label>:62                                      ; preds = %56
  %63 = load i64* %name_len, align 8
  %64 = add i64 %63, 1
  %65 = load i8** %p, align 8
  %66 = getelementptr inbounds i8* %65, i64 %64
  store i8* %66, i8** %p, align 8
  %67 = load i8** %p, align 8
  %68 = load i8** %e, align 8
  %69 = load i8** %p, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = call i8* @memchr(i8* %67, i32 38, i64 %72) nounwind readonly
  store i8* %73, i8** %s, align 8
  %74 = load i8** %s, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %78

; <label>:76                                      ; preds = %62
  %77 = load i8** %e, align 8
  store i8* %77, i8** %s, align 8
  br label %78

; <label>:78                                      ; preds = %76, %62
  %79 = load i8** %s, align 8
  %80 = load i8** %p, align 8
  %81 = icmp uge i8* %79, %80
  br i1 %81, label %82, label %83

; <label>:82                                      ; preds = %78
  br label %85

; <label>:83                                      ; preds = %78
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str4, i32 0, i32 0), i32 1749, i8* getelementptr inbounds ([67 x i8]* @__PRETTY_FUNCTION__.mg_get_var, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %85

; <label>:85                                      ; preds = %84, %82
  %86 = load i8** %p, align 8
  %87 = load i8** %s, align 8
  %88 = load i8** %p, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = trunc i64 %91 to i32
  %93 = load i8** %4, align 8
  %94 = load i64* %5, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @mg_url_decode(i8* %86, i32 %92, i8* %93, i32 %95, i32 1)
  store i32 %96, i32* %len, align 4
  %97 = load i32* %len, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %100

; <label>:99                                      ; preds = %85
  store i32 -2, i32* %len, align 4
  br label %100

; <label>:100                                     ; preds = %99, %85
  br label %105

; <label>:101                                     ; preds = %56, %49, %43
  br label %102

; <label>:102                                     ; preds = %101
  %103 = load i8** %p, align 8
  %104 = getelementptr inbounds i8* %103, i32 1
  store i8* %104, i8** %p, align 8
  br label %33

; <label>:105                                     ; preds = %100, %33
  br label %106

; <label>:106                                     ; preds = %105, %21
  br label %107

; <label>:107                                     ; preds = %106, %11
  %108 = load i32* %len, align 4
  ret i32 %108
}

declare i64 @strlen(i8*) nounwind readonly

define internal i32 @mg_strncasecmp(i8* %s1, i8* %s2, i64 %len) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %diff = alloca i32, align 4
  store i8* %s1, i8** %1, align 8
  store i8* %s2, i8** %2, align 8
  store i64 %len, i64* %3, align 8
  store i32 0, i32* %diff, align 4
  %4 = load i64* %3, align 8
  %5 = icmp ugt i64 %4, 0
  br i1 %5, label %6, label %31

; <label>:6                                       ; preds = %0
  br label %7

; <label>:7                                       ; preds = %28, %6
  %8 = load i8** %1, align 8
  %9 = getelementptr inbounds i8* %8, i32 1
  store i8* %9, i8** %1, align 8
  %10 = call i32 @lowercase(i8* %8)
  %11 = load i8** %2, align 8
  %12 = getelementptr inbounds i8* %11, i32 1
  store i8* %12, i8** %2, align 8
  %13 = call i32 @lowercase(i8* %11)
  %14 = sub nsw i32 %10, %13
  store i32 %14, i32* %diff, align 4
  br label %15

; <label>:15                                      ; preds = %7
  %16 = load i32* %diff, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %28

; <label>:18                                      ; preds = %15
  %19 = load i8** %1, align 8
  %20 = getelementptr inbounds i8* %19, i64 -1
  %21 = load i8* %20
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

; <label>:24                                      ; preds = %18
  %25 = load i64* %3, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %3, align 8
  %27 = icmp ugt i64 %26, 0
  br label %28

; <label>:28                                      ; preds = %24, %18, %15
  %29 = phi i1 [ false, %18 ], [ false, %15 ], [ %27, %24 ]
  br i1 %29, label %7, label %30

; <label>:30                                      ; preds = %28
  br label %31

; <label>:31                                      ; preds = %30, %0
  %32 = load i32* %diff, align 4
  ret i32 %32
}

declare i8* @memchr(i8*, i32, i64) nounwind readonly

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define i32 @mg_get_cookie(i8* %cookie_header, i8* %var_name, i8* %dst, i64 %dst_size) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %s = alloca i8*, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %name_len = alloca i32, align 4
  %len = alloca i32, align 4
  store i8* %cookie_header, i8** %1, align 8
  store i8* %var_name, i8** %2, align 8
  store i8* %dst, i8** %3, align 8
  store i64 %dst_size, i64* %4, align 8
  store i32 -1, i32* %len, align 4
  %5 = load i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %10, label %7

; <label>:7                                       ; preds = %0
  %8 = load i64* %4, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7, %0
  store i32 -2, i32* %len, align 4
  br label %114

; <label>:11                                      ; preds = %7
  %12 = load i8** %2, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %17, label %14

; <label>:14                                      ; preds = %11
  %15 = load i8** %1, align 8
  store i8* %15, i8** %s, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %20

; <label>:17                                      ; preds = %14, %11
  store i32 -1, i32* %len, align 4
  %18 = load i8** %3, align 8
  %19 = getelementptr inbounds i8* %18, i64 0
  store i8 0, i8* %19
  br label %113

; <label>:20                                      ; preds = %14
  %21 = load i8** %2, align 8
  %22 = call i64 @strlen(i8* %21) nounwind readonly
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %name_len, align 4
  %24 = load i8** %s, align 8
  %25 = load i8** %s, align 8
  %26 = call i64 @strlen(i8* %25) nounwind readonly
  %27 = getelementptr inbounds i8* %24, i64 %26
  store i8* %27, i8** %end, align 8
  %28 = load i8** %3, align 8
  %29 = getelementptr inbounds i8* %28, i64 0
  store i8 0, i8* %29
  br label %30

; <label>:30                                      ; preds = %107, %20
  %31 = load i8** %s, align 8
  %32 = load i8** %2, align 8
  %33 = call i8* @mg_strcasestr(i8* %31, i8* %32)
  store i8* %33, i8** %s, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %112

; <label>:35                                      ; preds = %30
  %36 = load i32* %name_len, align 4
  %37 = sext i32 %36 to i64
  %38 = load i8** %s, align 8
  %39 = getelementptr inbounds i8* %38, i64 %37
  %40 = load i8* %39
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 61
  br i1 %42, label %43, label %106

; <label>:43                                      ; preds = %35
  %44 = load i32* %name_len, align 4
  %45 = add nsw i32 %44, 1
  %46 = load i8** %s, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8* %46, i64 %47
  store i8* %48, i8** %s, align 8
  %49 = load i8** %s, align 8
  %50 = call i8* @strchr(i8* %49, i32 32) nounwind readonly
  store i8* %50, i8** %p, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %54

; <label>:52                                      ; preds = %43
  %53 = load i8** %end, align 8
  store i8* %53, i8** %p, align 8
  br label %54

; <label>:54                                      ; preds = %52, %43
  %55 = load i8** %p, align 8
  %56 = getelementptr inbounds i8* %55, i64 -1
  %57 = load i8* %56
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 59
  br i1 %59, label %60, label %63

; <label>:60                                      ; preds = %54
  %61 = load i8** %p, align 8
  %62 = getelementptr inbounds i8* %61, i32 -1
  store i8* %62, i8** %p, align 8
  br label %63

; <label>:63                                      ; preds = %60, %54
  %64 = load i8** %s, align 8
  %65 = load i8* %64
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 34
  br i1 %67, label %68, label %84

; <label>:68                                      ; preds = %63
  %69 = load i8** %p, align 8
  %70 = getelementptr inbounds i8* %69, i64 -1
  %71 = load i8* %70
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 34
  br i1 %73, label %74, label %84

; <label>:74                                      ; preds = %68
  %75 = load i8** %p, align 8
  %76 = load i8** %s, align 8
  %77 = getelementptr inbounds i8* %76, i64 1
  %78 = icmp ugt i8* %75, %77
  br i1 %78, label %79, label %84

; <label>:79                                      ; preds = %74
  %80 = load i8** %s, align 8
  %81 = getelementptr inbounds i8* %80, i32 1
  store i8* %81, i8** %s, align 8
  %82 = load i8** %p, align 8
  %83 = getelementptr inbounds i8* %82, i32 -1
  store i8* %83, i8** %p, align 8
  br label %84

; <label>:84                                      ; preds = %79, %74, %68, %63
  %85 = load i8** %p, align 8
  %86 = load i8** %s, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = load i64* %4, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %104

; <label>:92                                      ; preds = %84
  %93 = load i8** %p, align 8
  %94 = load i8** %s, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %len, align 4
  %99 = load i8** %3, align 8
  %100 = load i8** %s, align 8
  %101 = load i32* %len, align 4
  %102 = sext i32 %101 to i64
  %103 = add i64 %102, 1
  call void @mg_strlcpy(i8* %99, i8* %100, i64 %103)
  br label %105

; <label>:104                                     ; preds = %84
  store i32 -3, i32* %len, align 4
  br label %105

; <label>:105                                     ; preds = %104, %92
  br label %112

; <label>:106                                     ; preds = %35
  br label %107

; <label>:107                                     ; preds = %106
  %108 = load i32* %name_len, align 4
  %109 = load i8** %s, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i8* %109, i64 %110
  store i8* %111, i8** %s, align 8
  br label %30

; <label>:112                                     ; preds = %105, %30
  br label %113

; <label>:113                                     ; preds = %112, %17
  br label %114

; <label>:114                                     ; preds = %113, %10
  %115 = load i32* %len, align 4
  ret i32 %115
}

define internal i8* @mg_strcasestr(i8* %big_str, i8* %small_str) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %i = alloca i32, align 4
  %big_len = alloca i32, align 4
  %small_len = alloca i32, align 4
  store i8* %big_str, i8** %2, align 8
  store i8* %small_str, i8** %3, align 8
  %4 = load i8** %2, align 8
  %5 = call i64 @strlen(i8* %4) nounwind readonly
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %big_len, align 4
  %7 = load i8** %3, align 8
  %8 = call i64 @strlen(i8* %7) nounwind readonly
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %small_len, align 4
  store i32 0, i32* %i, align 4
  br label %10

; <label>:10                                      ; preds = %32, %0
  %11 = load i32* %i, align 4
  %12 = load i32* %big_len, align 4
  %13 = load i32* %small_len, align 4
  %14 = sub nsw i32 %12, %13
  %15 = icmp sle i32 %11, %14
  br i1 %15, label %16, label %35

; <label>:16                                      ; preds = %10
  %17 = load i8** %2, align 8
  %18 = load i32* %i, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8* %17, i64 %19
  %21 = load i8** %3, align 8
  %22 = load i32* %small_len, align 4
  %23 = sext i32 %22 to i64
  %24 = call i32 @mg_strncasecmp(i8* %20, i8* %21, i64 %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

; <label>:26                                      ; preds = %16
  %27 = load i8** %2, align 8
  %28 = load i32* %i, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8* %27, i64 %29
  store i8* %30, i8** %1
  br label %36

; <label>:31                                      ; preds = %16
  br label %32

; <label>:32                                      ; preds = %31
  %33 = load i32* %i, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %i, align 4
  br label %10

; <label>:35                                      ; preds = %10
  store i8* null, i8** %1
  br label %36

; <label>:36                                      ; preds = %35, %26
  %37 = load i8** %1
  ret i8* %37
}

declare i8* @strchr(i8*, i32) nounwind readonly

define internal void @mg_strlcpy(i8* %dst, i8* %src, i64 %n) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %dst, i8** %1, align 8
  store i8* %src, i8** %2, align 8
  store i64 %n, i64* %3, align 8
  br label %4

; <label>:4                                       ; preds = %20, %0
  %5 = load i8** %2, align 8
  %6 = load i8* %5
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

; <label>:9                                       ; preds = %4
  %10 = load i64* %3, align 8
  %11 = icmp ugt i64 %10, 1
  br label %12

; <label>:12                                      ; preds = %9, %4
  %13 = phi i1 [ false, %4 ], [ %11, %9 ]
  br i1 %13, label %14, label %23

; <label>:14                                      ; preds = %12
  %15 = load i8** %2, align 8
  %16 = getelementptr inbounds i8* %15, i32 1
  store i8* %16, i8** %2, align 8
  %17 = load i8* %15
  %18 = load i8** %1, align 8
  %19 = getelementptr inbounds i8* %18, i32 1
  store i8* %19, i8** %1, align 8
  store i8 %17, i8* %18
  br label %20

; <label>:20                                      ; preds = %14
  %21 = load i64* %3, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %3, align 8
  br label %4

; <label>:23                                      ; preds = %12
  %24 = load i8** %1, align 8
  store i8 0, i8* %24
  ret void
}

define i8* @mg_get_builtin_mime_type(i8* %path) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %ext = alloca i8*, align 8
  %i = alloca i64, align 8
  %path_len = alloca i64, align 8
  store i8* %path, i8** %2, align 8
  %3 = load i8** %2, align 8
  %4 = call i64 @strlen(i8* %3) nounwind readonly
  store i64 %4, i64* %path_len, align 8
  store i64 0, i64* %i, align 8
  br label %5

; <label>:5                                       ; preds = %40, %0
  %6 = load i64* %i, align 8
  %7 = getelementptr inbounds [48 x %struct.anon.0]* @builtin_mime_types, i32 0, i64 %6
  %8 = getelementptr inbounds %struct.anon.0* %7, i32 0, i32 0
  %9 = load i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %43

; <label>:11                                      ; preds = %5
  %12 = load i8** %2, align 8
  %13 = load i64* %path_len, align 8
  %14 = load i64* %i, align 8
  %15 = getelementptr inbounds [48 x %struct.anon.0]* @builtin_mime_types, i32 0, i64 %14
  %16 = getelementptr inbounds %struct.anon.0* %15, i32 0, i32 1
  %17 = load i64* %16, align 8
  %18 = sub i64 %13, %17
  %19 = getelementptr inbounds i8* %12, i64 %18
  store i8* %19, i8** %ext, align 8
  %20 = load i64* %path_len, align 8
  %21 = load i64* %i, align 8
  %22 = getelementptr inbounds [48 x %struct.anon.0]* @builtin_mime_types, i32 0, i64 %21
  %23 = getelementptr inbounds %struct.anon.0* %22, i32 0, i32 1
  %24 = load i64* %23, align 8
  %25 = icmp ugt i64 %20, %24
  br i1 %25, label %26, label %39

; <label>:26                                      ; preds = %11
  %27 = load i8** %ext, align 8
  %28 = load i64* %i, align 8
  %29 = getelementptr inbounds [48 x %struct.anon.0]* @builtin_mime_types, i32 0, i64 %28
  %30 = getelementptr inbounds %struct.anon.0* %29, i32 0, i32 0
  %31 = load i8** %30, align 8
  %32 = call i32 @mg_strcasecmp(i8* %27, i8* %31)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

; <label>:34                                      ; preds = %26
  %35 = load i64* %i, align 8
  %36 = getelementptr inbounds [48 x %struct.anon.0]* @builtin_mime_types, i32 0, i64 %35
  %37 = getelementptr inbounds %struct.anon.0* %36, i32 0, i32 2
  %38 = load i8** %37, align 8
  store i8* %38, i8** %1
  br label %44

; <label>:39                                      ; preds = %26, %11
  br label %40

; <label>:40                                      ; preds = %39
  %41 = load i64* %i, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %i, align 8
  br label %5

; <label>:43                                      ; preds = %5
  store i8* getelementptr inbounds ([11 x i8]* @.str5, i32 0, i32 0), i8** %1
  br label %44

; <label>:44                                      ; preds = %43, %34
  %45 = load i8** %1
  ret i8* %45
}

define internal i32 @mg_strcasecmp(i8* %s1, i8* %s2) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %diff = alloca i32, align 4
  store i8* %s1, i8** %1, align 8
  store i8* %s2, i8** %2, align 8
  br label %3

; <label>:3                                       ; preds = %20, %0
  %4 = load i8** %1, align 8
  %5 = getelementptr inbounds i8* %4, i32 1
  store i8* %5, i8** %1, align 8
  %6 = call i32 @lowercase(i8* %4)
  %7 = load i8** %2, align 8
  %8 = getelementptr inbounds i8* %7, i32 1
  store i8* %8, i8** %2, align 8
  %9 = call i32 @lowercase(i8* %7)
  %10 = sub nsw i32 %6, %9
  store i32 %10, i32* %diff, align 4
  br label %11

; <label>:11                                      ; preds = %3
  %12 = load i32* %diff, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

; <label>:14                                      ; preds = %11
  %15 = load i8** %1, align 8
  %16 = getelementptr inbounds i8* %15, i64 -1
  %17 = load i8* %16
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br label %20

; <label>:20                                      ; preds = %14, %11
  %21 = phi i1 [ false, %11 ], [ %19, %14 ]
  br i1 %21, label %3, label %22

; <label>:22                                      ; preds = %20
  %23 = load i32* %diff, align 4
  ret i32 %23
}

define i8* @mg_md5(i8* %buf, ...) nounwind uwtable {
  %1 = alloca i8*, align 8
  %hash = alloca [16 x i8], align 16
  %p = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %ctx = alloca %struct.MD5Context, align 4
  store i8* %buf, i8** %1, align 8
  call void @MD5Init(%struct.MD5Context* %ctx)
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %3 = bitcast %struct.__va_list_tag* %2 to i8*
  call void @llvm.va_start(i8* %3)
  br label %4

; <label>:4                                       ; preds = %24, %0
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %6 = getelementptr inbounds %struct.__va_list_tag* %5, i32 0, i32 0
  %7 = load i32* %6
  %8 = icmp ule i32 %7, 40
  br i1 %8, label %9, label %15

; <label>:9                                       ; preds = %4
  %10 = getelementptr inbounds %struct.__va_list_tag* %5, i32 0, i32 3
  %11 = load i8** %10
  %12 = getelementptr i8* %11, i32 %7
  %13 = bitcast i8* %12 to i8**
  %14 = add i32 %7, 8
  store i32 %14, i32* %6
  br label %20

; <label>:15                                      ; preds = %4
  %16 = getelementptr inbounds %struct.__va_list_tag* %5, i32 0, i32 2
  %17 = load i8** %16
  %18 = bitcast i8* %17 to i8**
  %19 = getelementptr i8* %17, i32 8
  store i8* %19, i8** %16
  br label %20

; <label>:20                                      ; preds = %15, %9
  %21 = phi i8** [ %13, %9 ], [ %18, %15 ]
  %22 = load i8** %21
  store i8* %22, i8** %p, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

; <label>:24                                      ; preds = %20
  %25 = load i8** %p, align 8
  %26 = load i8** %p, align 8
  %27 = call i64 @strlen(i8* %26) nounwind readonly
  %28 = trunc i64 %27 to i32
  call void @MD5Update(%struct.MD5Context* %ctx, i8* %25, i32 %28)
  br label %4

; <label>:29                                      ; preds = %20
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %31 = bitcast %struct.__va_list_tag* %30 to i8*
  call void @llvm.va_end(i8* %31)
  %32 = getelementptr inbounds [16 x i8]* %hash, i32 0, i32 0
  call void @MD5Final(i8* %32, %struct.MD5Context* %ctx)
  %33 = load i8** %1, align 8
  %34 = getelementptr inbounds [16 x i8]* %hash, i32 0, i32 0
  call void @bin2str(i8* %33, i8* %34, i64 16)
  %35 = load i8** %1, align 8
  ret i8* %35
}

define internal void @MD5Init(%struct.MD5Context* %ctx) nounwind uwtable {
  %1 = alloca %struct.MD5Context*, align 8
  store %struct.MD5Context* %ctx, %struct.MD5Context** %1, align 8
  %2 = load %struct.MD5Context** %1, align 8
  %3 = getelementptr inbounds %struct.MD5Context* %2, i32 0, i32 0
  %4 = getelementptr inbounds [4 x i32]* %3, i32 0, i64 0
  store i32 1732584193, i32* %4, align 4
  %5 = load %struct.MD5Context** %1, align 8
  %6 = getelementptr inbounds %struct.MD5Context* %5, i32 0, i32 0
  %7 = getelementptr inbounds [4 x i32]* %6, i32 0, i64 1
  store i32 -271733879, i32* %7, align 4
  %8 = load %struct.MD5Context** %1, align 8
  %9 = getelementptr inbounds %struct.MD5Context* %8, i32 0, i32 0
  %10 = getelementptr inbounds [4 x i32]* %9, i32 0, i64 2
  store i32 -1732584194, i32* %10, align 4
  %11 = load %struct.MD5Context** %1, align 8
  %12 = getelementptr inbounds %struct.MD5Context* %11, i32 0, i32 0
  %13 = getelementptr inbounds [4 x i32]* %12, i32 0, i64 3
  store i32 271733878, i32* %13, align 4
  %14 = load %struct.MD5Context** %1, align 8
  %15 = getelementptr inbounds %struct.MD5Context* %14, i32 0, i32 1
  %16 = getelementptr inbounds [2 x i32]* %15, i32 0, i64 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.MD5Context** %1, align 8
  %18 = getelementptr inbounds %struct.MD5Context* %17, i32 0, i32 1
  %19 = getelementptr inbounds [2 x i32]* %18, i32 0, i64 1
  store i32 0, i32* %19, align 4
  ret void
}

define internal void @MD5Update(%struct.MD5Context* %ctx, i8* %buf, i32 %len) nounwind uwtable {
  %1 = alloca %struct.MD5Context*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %t = alloca i32, align 4
  %p = alloca i8*, align 8
  store %struct.MD5Context* %ctx, %struct.MD5Context** %1, align 8
  store i8* %buf, i8** %2, align 8
  store i32 %len, i32* %3, align 4
  %4 = load %struct.MD5Context** %1, align 8
  %5 = getelementptr inbounds %struct.MD5Context* %4, i32 0, i32 1
  %6 = getelementptr inbounds [2 x i32]* %5, i32 0, i64 0
  %7 = load i32* %6, align 4
  store i32 %7, i32* %t, align 4
  %8 = load i32* %t, align 4
  %9 = load i32* %3, align 4
  %10 = shl i32 %9, 3
  %11 = add i32 %8, %10
  %12 = load %struct.MD5Context** %1, align 8
  %13 = getelementptr inbounds %struct.MD5Context* %12, i32 0, i32 1
  %14 = getelementptr inbounds [2 x i32]* %13, i32 0, i64 0
  store i32 %11, i32* %14, align 4
  %15 = load i32* %t, align 4
  %16 = icmp ult i32 %11, %15
  br i1 %16, label %17, label %23

; <label>:17                                      ; preds = %0
  %18 = load %struct.MD5Context** %1, align 8
  %19 = getelementptr inbounds %struct.MD5Context* %18, i32 0, i32 1
  %20 = getelementptr inbounds [2 x i32]* %19, i32 0, i64 1
  %21 = load i32* %20, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %23

; <label>:23                                      ; preds = %17, %0
  %24 = load i32* %3, align 4
  %25 = lshr i32 %24, 29
  %26 = load %struct.MD5Context** %1, align 8
  %27 = getelementptr inbounds %struct.MD5Context* %26, i32 0, i32 1
  %28 = getelementptr inbounds [2 x i32]* %27, i32 0, i64 1
  %29 = load i32* %28, align 4
  %30 = add i32 %29, %25
  store i32 %30, i32* %28, align 4
  %31 = load i32* %t, align 4
  %32 = lshr i32 %31, 3
  %33 = and i32 %32, 63
  store i32 %33, i32* %t, align 4
  %34 = load i32* %t, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %75

; <label>:36                                      ; preds = %23
  %37 = load %struct.MD5Context** %1, align 8
  %38 = getelementptr inbounds %struct.MD5Context* %37, i32 0, i32 2
  %39 = getelementptr inbounds [64 x i8]* %38, i32 0, i32 0
  %40 = load i32* %t, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8* %39, i64 %41
  store i8* %42, i8** %p, align 8
  %43 = load i32* %t, align 4
  %44 = sub i32 64, %43
  store i32 %44, i32* %t, align 4
  %45 = load i32* %3, align 4
  %46 = load i32* %t, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %53

; <label>:48                                      ; preds = %36
  %49 = load i8** %p, align 8
  %50 = load i8** %2, align 8
  %51 = load i32* %3, align 4
  %52 = zext i32 %51 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 %52, i32 1, i1 false)
  br label %105

; <label>:53                                      ; preds = %36
  %54 = load i8** %p, align 8
  %55 = load i8** %2, align 8
  %56 = load i32* %t, align 4
  %57 = zext i32 %56 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 %57, i32 1, i1 false)
  %58 = load %struct.MD5Context** %1, align 8
  %59 = getelementptr inbounds %struct.MD5Context* %58, i32 0, i32 2
  %60 = getelementptr inbounds [64 x i8]* %59, i32 0, i32 0
  call void @byteReverse(i8* %60, i32 16)
  %61 = load %struct.MD5Context** %1, align 8
  %62 = getelementptr inbounds %struct.MD5Context* %61, i32 0, i32 0
  %63 = getelementptr inbounds [4 x i32]* %62, i32 0, i32 0
  %64 = load %struct.MD5Context** %1, align 8
  %65 = getelementptr inbounds %struct.MD5Context* %64, i32 0, i32 2
  %66 = getelementptr inbounds [64 x i8]* %65, i32 0, i32 0
  %67 = bitcast i8* %66 to i32*
  call void @MD5Transform(i32* %63, i32* %67)
  %68 = load i32* %t, align 4
  %69 = load i8** %2, align 8
  %70 = zext i32 %68 to i64
  %71 = getelementptr inbounds i8* %69, i64 %70
  store i8* %71, i8** %2, align 8
  %72 = load i32* %t, align 4
  %73 = load i32* %3, align 4
  %74 = sub i32 %73, %72
  store i32 %74, i32* %3, align 4
  br label %75

; <label>:75                                      ; preds = %53, %23
  br label %76

; <label>:76                                      ; preds = %79, %75
  %77 = load i32* %3, align 4
  %78 = icmp uge i32 %77, 64
  br i1 %78, label %79, label %98

; <label>:79                                      ; preds = %76
  %80 = load %struct.MD5Context** %1, align 8
  %81 = getelementptr inbounds %struct.MD5Context* %80, i32 0, i32 2
  %82 = getelementptr inbounds [64 x i8]* %81, i32 0, i32 0
  %83 = load i8** %2, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %83, i64 64, i32 1, i1 false)
  %84 = load %struct.MD5Context** %1, align 8
  %85 = getelementptr inbounds %struct.MD5Context* %84, i32 0, i32 2
  %86 = getelementptr inbounds [64 x i8]* %85, i32 0, i32 0
  call void @byteReverse(i8* %86, i32 16)
  %87 = load %struct.MD5Context** %1, align 8
  %88 = getelementptr inbounds %struct.MD5Context* %87, i32 0, i32 0
  %89 = getelementptr inbounds [4 x i32]* %88, i32 0, i32 0
  %90 = load %struct.MD5Context** %1, align 8
  %91 = getelementptr inbounds %struct.MD5Context* %90, i32 0, i32 2
  %92 = getelementptr inbounds [64 x i8]* %91, i32 0, i32 0
  %93 = bitcast i8* %92 to i32*
  call void @MD5Transform(i32* %89, i32* %93)
  %94 = load i8** %2, align 8
  %95 = getelementptr inbounds i8* %94, i64 64
  store i8* %95, i8** %2, align 8
  %96 = load i32* %3, align 4
  %97 = sub i32 %96, 64
  store i32 %97, i32* %3, align 4
  br label %76

; <label>:98                                      ; preds = %76
  %99 = load %struct.MD5Context** %1, align 8
  %100 = getelementptr inbounds %struct.MD5Context* %99, i32 0, i32 2
  %101 = getelementptr inbounds [64 x i8]* %100, i32 0, i32 0
  %102 = load i8** %2, align 8
  %103 = load i32* %3, align 4
  %104 = zext i32 %103 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %101, i8* %102, i64 %104, i32 1, i1 false)
  br label %105

; <label>:105                                     ; preds = %98, %48
  ret void
}

declare void @llvm.va_end(i8*) nounwind

define internal void @MD5Final(i8* %digest, %struct.MD5Context* %ctx) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.MD5Context*, align 8
  %count = alloca i32, align 4
  %p = alloca i8*, align 8
  %a = alloca i32*, align 8
  store i8* %digest, i8** %1, align 8
  store %struct.MD5Context* %ctx, %struct.MD5Context** %2, align 8
  %3 = load %struct.MD5Context** %2, align 8
  %4 = getelementptr inbounds %struct.MD5Context* %3, i32 0, i32 1
  %5 = getelementptr inbounds [2 x i32]* %4, i32 0, i64 0
  %6 = load i32* %5, align 4
  %7 = lshr i32 %6, 3
  %8 = and i32 %7, 63
  store i32 %8, i32* %count, align 4
  %9 = load %struct.MD5Context** %2, align 8
  %10 = getelementptr inbounds %struct.MD5Context* %9, i32 0, i32 2
  %11 = getelementptr inbounds [64 x i8]* %10, i32 0, i32 0
  %12 = load i32* %count, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8* %11, i64 %13
  store i8* %14, i8** %p, align 8
  %15 = load i8** %p, align 8
  %16 = getelementptr inbounds i8* %15, i32 1
  store i8* %16, i8** %p, align 8
  store i8 -128, i8* %15
  %17 = load i32* %count, align 4
  %18 = sub i32 63, %17
  store i32 %18, i32* %count, align 4
  %19 = load i32* %count, align 4
  %20 = icmp ult i32 %19, 8
  br i1 %20, label %21, label %38

; <label>:21                                      ; preds = %0
  %22 = load i8** %p, align 8
  %23 = load i32* %count, align 4
  %24 = zext i32 %23 to i64
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 %24, i32 1, i1 false)
  %25 = load %struct.MD5Context** %2, align 8
  %26 = getelementptr inbounds %struct.MD5Context* %25, i32 0, i32 2
  %27 = getelementptr inbounds [64 x i8]* %26, i32 0, i32 0
  call void @byteReverse(i8* %27, i32 16)
  %28 = load %struct.MD5Context** %2, align 8
  %29 = getelementptr inbounds %struct.MD5Context* %28, i32 0, i32 0
  %30 = getelementptr inbounds [4 x i32]* %29, i32 0, i32 0
  %31 = load %struct.MD5Context** %2, align 8
  %32 = getelementptr inbounds %struct.MD5Context* %31, i32 0, i32 2
  %33 = getelementptr inbounds [64 x i8]* %32, i32 0, i32 0
  %34 = bitcast i8* %33 to i32*
  call void @MD5Transform(i32* %30, i32* %34)
  %35 = load %struct.MD5Context** %2, align 8
  %36 = getelementptr inbounds %struct.MD5Context* %35, i32 0, i32 2
  %37 = getelementptr inbounds [64 x i8]* %36, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %37, i8 0, i64 56, i32 1, i1 false)
  br label %43

; <label>:38                                      ; preds = %0
  %39 = load i8** %p, align 8
  %40 = load i32* %count, align 4
  %41 = sub i32 %40, 8
  %42 = zext i32 %41 to i64
  call void @llvm.memset.p0i8.i64(i8* %39, i8 0, i64 %42, i32 1, i1 false)
  br label %43

; <label>:43                                      ; preds = %38, %21
  %44 = load %struct.MD5Context** %2, align 8
  %45 = getelementptr inbounds %struct.MD5Context* %44, i32 0, i32 2
  %46 = getelementptr inbounds [64 x i8]* %45, i32 0, i32 0
  call void @byteReverse(i8* %46, i32 14)
  %47 = load %struct.MD5Context** %2, align 8
  %48 = getelementptr inbounds %struct.MD5Context* %47, i32 0, i32 2
  %49 = getelementptr inbounds [64 x i8]* %48, i32 0, i32 0
  %50 = bitcast i8* %49 to i32*
  store i32* %50, i32** %a, align 8
  %51 = load %struct.MD5Context** %2, align 8
  %52 = getelementptr inbounds %struct.MD5Context* %51, i32 0, i32 1
  %53 = getelementptr inbounds [2 x i32]* %52, i32 0, i64 0
  %54 = load i32* %53, align 4
  %55 = load i32** %a, align 8
  %56 = getelementptr inbounds i32* %55, i64 14
  store i32 %54, i32* %56
  %57 = load %struct.MD5Context** %2, align 8
  %58 = getelementptr inbounds %struct.MD5Context* %57, i32 0, i32 1
  %59 = getelementptr inbounds [2 x i32]* %58, i32 0, i64 1
  %60 = load i32* %59, align 4
  %61 = load i32** %a, align 8
  %62 = getelementptr inbounds i32* %61, i64 15
  store i32 %60, i32* %62
  %63 = load %struct.MD5Context** %2, align 8
  %64 = getelementptr inbounds %struct.MD5Context* %63, i32 0, i32 0
  %65 = getelementptr inbounds [4 x i32]* %64, i32 0, i32 0
  %66 = load %struct.MD5Context** %2, align 8
  %67 = getelementptr inbounds %struct.MD5Context* %66, i32 0, i32 2
  %68 = getelementptr inbounds [64 x i8]* %67, i32 0, i32 0
  %69 = bitcast i8* %68 to i32*
  call void @MD5Transform(i32* %65, i32* %69)
  %70 = load %struct.MD5Context** %2, align 8
  %71 = getelementptr inbounds %struct.MD5Context* %70, i32 0, i32 0
  %72 = getelementptr inbounds [4 x i32]* %71, i32 0, i32 0
  %73 = bitcast i32* %72 to i8*
  call void @byteReverse(i8* %73, i32 4)
  %74 = load i8** %1, align 8
  %75 = load %struct.MD5Context** %2, align 8
  %76 = getelementptr inbounds %struct.MD5Context* %75, i32 0, i32 0
  %77 = getelementptr inbounds [4 x i32]* %76, i32 0, i32 0
  %78 = bitcast i32* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %78, i64 16, i32 1, i1 false)
  %79 = load %struct.MD5Context** %2, align 8
  %80 = bitcast %struct.MD5Context* %79 to i8*
  call void @llvm.memset.p0i8.i64(i8* %80, i8 0, i64 88, i32 1, i1 false)
  ret void
}

define internal void @bin2str(i8* %to, i8* %p, i64 %len) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %to, i8** %1, align 8
  store i8* %p, i8** %2, align 8
  store i64 %len, i64* %3, align 8
  br label %4

; <label>:4                                       ; preds = %31, %0
  %5 = load i64* %3, align 8
  %6 = add i64 %5, -1
  store i64 %6, i64* %3, align 8
  %7 = icmp ne i64 %5, 0
  br i1 %7, label %8, label %34

; <label>:8                                       ; preds = %4
  %9 = load i8** %2, align 8
  %10 = getelementptr inbounds i8* %9, i64 0
  %11 = load i8* %10
  %12 = zext i8 %11 to i32
  %13 = ashr i32 %12, 4
  %14 = sext i32 %13 to i64
  %15 = load i8** @bin2str.hex, align 8
  %16 = getelementptr inbounds i8* %15, i64 %14
  %17 = load i8* %16
  %18 = load i8** %1, align 8
  %19 = getelementptr inbounds i8* %18, i32 1
  store i8* %19, i8** %1, align 8
  store i8 %17, i8* %18
  %20 = load i8** %2, align 8
  %21 = getelementptr inbounds i8* %20, i64 0
  %22 = load i8* %21
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 15
  %25 = sext i32 %24 to i64
  %26 = load i8** @bin2str.hex, align 8
  %27 = getelementptr inbounds i8* %26, i64 %25
  %28 = load i8* %27
  %29 = load i8** %1, align 8
  %30 = getelementptr inbounds i8* %29, i32 1
  store i8* %30, i8** %1, align 8
  store i8 %28, i8* %29
  br label %31

; <label>:31                                      ; preds = %8
  %32 = load i8** %2, align 8
  %33 = getelementptr inbounds i8* %32, i32 1
  store i8* %33, i8** %2, align 8
  br label %4

; <label>:34                                      ; preds = %4
  %35 = load i8** %1, align 8
  store i8 0, i8* %35
  ret void
}

define i32 @mg_modify_passwords_file(i8* %fname, i8* %domain, i8* %user, i8* %pass) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %found = alloca i32, align 4
  %line = alloca [512 x i8], align 16
  %u = alloca [512 x i8], align 16
  %d = alloca [512 x i8], align 16
  %ha1 = alloca [33 x i8], align 16
  %tmp = alloca [4096 x i8], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  %fp2 = alloca %struct._IO_FILE*, align 8
  store i8* %fname, i8** %2, align 8
  store i8* %domain, i8** %3, align 8
  store i8* %user, i8** %4, align 8
  store i8* %pass, i8** %5, align 8
  store i32 0, i32* %found, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp2, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  %6 = load i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %15

; <label>:8                                       ; preds = %0
  %9 = load i8** %5, align 8
  %10 = getelementptr inbounds i8* %9, i64 0
  %11 = load i8* %10
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %8
  store i8* null, i8** %5, align 8
  br label %15

; <label>:15                                      ; preds = %14, %8, %0
  %16 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  %17 = load i8** %2, align 8
  %18 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %16, i64 4096, i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0), i8* %17) nounwind
  %19 = load i8** %2, align 8
  %20 = call %struct._IO_FILE* @fopen(i8* %19, i8* getelementptr inbounds ([3 x i8]* @.str7, i32 0, i32 0))
  store %struct._IO_FILE* %20, %struct._IO_FILE** %fp, align 8
  %21 = icmp ne %struct._IO_FILE* %20, null
  br i1 %21, label %22, label %25

; <label>:22                                      ; preds = %15
  %23 = load %struct._IO_FILE** %fp, align 8
  %24 = call i32 @fclose(%struct._IO_FILE* %23)
  br label %25

; <label>:25                                      ; preds = %22, %15
  %26 = load i8** %2, align 8
  %27 = call %struct._IO_FILE* @fopen(i8* %26, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0))
  store %struct._IO_FILE* %27, %struct._IO_FILE** %fp, align 8
  %28 = icmp eq %struct._IO_FILE* %27, null
  br i1 %28, label %29, label %30

; <label>:29                                      ; preds = %25
  store i32 0, i32* %1
  br label %110

; <label>:30                                      ; preds = %25
  %31 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  %32 = call %struct._IO_FILE* @fopen(i8* %31, i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 0))
  store %struct._IO_FILE* %32, %struct._IO_FILE** %fp2, align 8
  %33 = icmp eq %struct._IO_FILE* %32, null
  br i1 %33, label %34, label %37

; <label>:34                                      ; preds = %30
  %35 = load %struct._IO_FILE** %fp, align 8
  %36 = call i32 @fclose(%struct._IO_FILE* %35)
  store i32 0, i32* %1
  br label %110

; <label>:37                                      ; preds = %30
  br label %38

; <label>:38                                      ; preds = %37
  br label %39

; <label>:39                                      ; preds = %82, %50, %38
  %40 = getelementptr inbounds [512 x i8]* %line, i32 0, i32 0
  %41 = load %struct._IO_FILE** %fp, align 8
  %42 = call i8* @fgets(i8* %40, i32 512, %struct._IO_FILE* %41)
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %83

; <label>:44                                      ; preds = %39
  %45 = getelementptr inbounds [512 x i8]* %line, i32 0, i32 0
  %46 = getelementptr inbounds [512 x i8]* %u, i32 0, i32 0
  %47 = getelementptr inbounds [512 x i8]* %d, i32 0, i32 0
  %48 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %45, i8* getelementptr inbounds ([16 x i8]* @.str10, i32 0, i32 0), i8* %46, i8* %47) nounwind
  %49 = icmp ne i32 %48, 2
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %44
  br label %39

; <label>:51                                      ; preds = %44
  %52 = getelementptr inbounds [512 x i8]* %u, i32 0, i32 0
  %53 = load i8** %4, align 8
  %54 = call i32 @strcmp(i8* %52, i8* %53) nounwind readonly
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %78, label %56

; <label>:56                                      ; preds = %51
  %57 = getelementptr inbounds [512 x i8]* %d, i32 0, i32 0
  %58 = load i8** %3, align 8
  %59 = call i32 @strcmp(i8* %57, i8* %58) nounwind readonly
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %78, label %61

; <label>:61                                      ; preds = %56
  %62 = load i32* %found, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %found, align 4
  %64 = load i8** %5, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %77

; <label>:66                                      ; preds = %61
  %67 = getelementptr inbounds [33 x i8]* %ha1, i32 0, i32 0
  %68 = load i8** %4, align 8
  %69 = load i8** %3, align 8
  %70 = load i8** %5, align 8
  %71 = call i8* (i8*, ...)* @mg_md5(i8* %67, i8* %68, i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), i8* %69, i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), i8* %70, i8* null)
  %72 = load %struct._IO_FILE** %fp2, align 8
  %73 = load i8** %4, align 8
  %74 = load i8** %3, align 8
  %75 = getelementptr inbounds [33 x i8]* %ha1, i32 0, i32 0
  %76 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([10 x i8]* @.str12, i32 0, i32 0), i8* %73, i8* %74, i8* %75)
  br label %77

; <label>:77                                      ; preds = %66, %61
  br label %82

; <label>:78                                      ; preds = %56, %51
  %79 = load %struct._IO_FILE** %fp2, align 8
  %80 = getelementptr inbounds [512 x i8]* %line, i32 0, i32 0
  %81 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* %80)
  br label %82

; <label>:82                                      ; preds = %78, %77
  br label %39

; <label>:83                                      ; preds = %39
  %84 = load i32* %found, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %100, label %86

; <label>:86                                      ; preds = %83
  %87 = load i8** %5, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %100

; <label>:89                                      ; preds = %86
  %90 = getelementptr inbounds [33 x i8]* %ha1, i32 0, i32 0
  %91 = load i8** %4, align 8
  %92 = load i8** %3, align 8
  %93 = load i8** %5, align 8
  %94 = call i8* (i8*, ...)* @mg_md5(i8* %90, i8* %91, i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), i8* %92, i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), i8* %93, i8* null)
  %95 = load %struct._IO_FILE** %fp2, align 8
  %96 = load i8** %4, align 8
  %97 = load i8** %3, align 8
  %98 = getelementptr inbounds [33 x i8]* %ha1, i32 0, i32 0
  %99 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([10 x i8]* @.str12, i32 0, i32 0), i8* %96, i8* %97, i8* %98)
  br label %100

; <label>:100                                     ; preds = %89, %86, %83
  %101 = load %struct._IO_FILE** %fp, align 8
  %102 = call i32 @fclose(%struct._IO_FILE* %101)
  %103 = load %struct._IO_FILE** %fp2, align 8
  %104 = call i32 @fclose(%struct._IO_FILE* %103)
  %105 = load i8** %2, align 8
  %106 = call i32 @remove(i8* %105) nounwind
  %107 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  %108 = load i8** %2, align 8
  %109 = call i32 @rename(i8* %107, i8* %108) nounwind
  store i32 1, i32* %1
  br label %110

; <label>:110                                     ; preds = %100, %34, %29
  %111 = load i32* %1
  ret i32 %111
}

declare i32 @snprintf(i8*, i64, i8*, ...) nounwind

declare %struct._IO_FILE* @fopen(i8*, i8*)

declare i32 @fclose(%struct._IO_FILE*)

declare i8* @fgets(i8*, i32, %struct._IO_FILE*)

declare i32 @__isoc99_sscanf(i8*, i8*, ...) nounwind

declare i32 @strcmp(i8*, i8*) nounwind readonly

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

declare i32 @remove(i8*) nounwind

declare i32 @rename(i8*, i8*) nounwind

define void @mg_url_encode(i8* %src, i8* %dst, i64 %dst_len) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %end = alloca i8*, align 8
  store i8* %src, i8** %1, align 8
  store i8* %dst, i8** %2, align 8
  store i64 %dst_len, i64* %3, align 8
  %4 = load i8** %2, align 8
  %5 = load i64* %3, align 8
  %6 = getelementptr inbounds i8* %4, i64 %5
  %7 = getelementptr inbounds i8* %6, i64 -1
  store i8* %7, i8** %end, align 8
  br label %8

; <label>:8                                       ; preds = %74, %0
  %9 = load i8** %1, align 8
  %10 = load i8* %9
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

; <label>:13                                      ; preds = %8
  %14 = load i8** %2, align 8
  %15 = load i8** %end, align 8
  %16 = icmp ult i8* %14, %15
  br label %17

; <label>:17                                      ; preds = %13, %8
  %18 = phi i1 [ false, %8 ], [ %16, %13 ]
  br i1 %18, label %19, label %79

; <label>:19                                      ; preds = %17
  %20 = load i8** %1, align 8
  %21 = load i8* %20
  %22 = zext i8 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = call i16** @__ctype_b_loc() nounwind readnone
  %25 = load i16** %24
  %26 = getelementptr inbounds i16* %25, i64 %23
  %27 = load i16* %26
  %28 = zext i16 %27 to i32
  %29 = and i32 %28, 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

; <label>:31                                      ; preds = %19
  %32 = load i8** @mg_url_encode.dont_escape, align 8
  %33 = load i8** %1, align 8
  %34 = load i8* %33
  %35 = zext i8 %34 to i32
  %36 = call i8* @strchr(i8* %32, i32 %35) nounwind readonly
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

; <label>:38                                      ; preds = %31, %19
  %39 = load i8** %1, align 8
  %40 = load i8* %39
  %41 = load i8** %2, align 8
  store i8 %40, i8* %41
  br label %73

; <label>:42                                      ; preds = %31
  %43 = load i8** %2, align 8
  %44 = getelementptr inbounds i8* %43, i64 2
  %45 = load i8** %end, align 8
  %46 = icmp ult i8* %44, %45
  br i1 %46, label %47, label %72

; <label>:47                                      ; preds = %42
  %48 = load i8** %2, align 8
  %49 = getelementptr inbounds i8* %48, i64 0
  store i8 37, i8* %49
  %50 = load i8** %1, align 8
  %51 = load i8* %50
  %52 = zext i8 %51 to i32
  %53 = ashr i32 %52, 4
  %54 = sext i32 %53 to i64
  %55 = load i8** @mg_url_encode.hex, align 8
  %56 = getelementptr inbounds i8* %55, i64 %54
  %57 = load i8* %56
  %58 = load i8** %2, align 8
  %59 = getelementptr inbounds i8* %58, i64 1
  store i8 %57, i8* %59
  %60 = load i8** %1, align 8
  %61 = load i8* %60
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, 15
  %64 = sext i32 %63 to i64
  %65 = load i8** @mg_url_encode.hex, align 8
  %66 = getelementptr inbounds i8* %65, i64 %64
  %67 = load i8* %66
  %68 = load i8** %2, align 8
  %69 = getelementptr inbounds i8* %68, i64 2
  store i8 %67, i8* %69
  %70 = load i8** %2, align 8
  %71 = getelementptr inbounds i8* %70, i64 2
  store i8* %71, i8** %2, align 8
  br label %72

; <label>:72                                      ; preds = %47, %42
  br label %73

; <label>:73                                      ; preds = %72, %38
  br label %74

; <label>:74                                      ; preds = %73
  %75 = load i8** %1, align 8
  %76 = getelementptr inbounds i8* %75, i32 1
  store i8* %76, i8** %1, align 8
  %77 = load i8** %2, align 8
  %78 = getelementptr inbounds i8* %77, i32 1
  store i8* %78, i8** %2, align 8
  br label %8

; <label>:79                                      ; preds = %17
  %80 = load i8** %2, align 8
  store i8 0, i8* %80
  ret void
}

define void @mg_send_file(%struct.mg_connection* %conn, i8* %path) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %file = alloca %struct.file, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %path, i8** %2, align 8
  %3 = bitcast %struct.file* %file to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 48, i32 8, i1 false)
  %4 = bitcast i8* %3 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %5 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %4, i32 0, i32 6
  %6 = load %struct.mg_connection** %1, align 8
  %7 = load i8** %2, align 8
  %8 = call i32 @mg_stat(%struct.mg_connection* %6, i8* %7, %struct.file* %file)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

; <label>:10                                      ; preds = %0
  %11 = load %struct.mg_connection** %1, align 8
  %12 = load i8** %2, align 8
  call void @handle_file_request(%struct.mg_connection* %11, i8* %12, %struct.file* %file)
  br label %15

; <label>:13                                      ; preds = %0
  %14 = load %struct.mg_connection** %1, align 8
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %14, i32 404, i8* getelementptr inbounds ([10 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str17, i32 0, i32 0))
  br label %15

; <label>:15                                      ; preds = %13, %10
  ret void
}

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

define internal i32 @mg_stat(%struct.mg_connection* %conn, i8* %path, %struct.file* %filep) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.file*, align 8
  %st = alloca %struct.stat, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %path, i8** %2, align 8
  store %struct.file* %filep, %struct.file** %3, align 8
  %4 = load %struct.mg_connection** %1, align 8
  %5 = load i8** %2, align 8
  %6 = load %struct.file** %3, align 8
  %7 = call i32 @is_file_in_memory(%struct.mg_connection* %4, i8* %5, %struct.file* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %29, label %9

; <label>:9                                       ; preds = %0
  %10 = load i8** %2, align 8
  %11 = call i32 @stat(i8* %10, %struct.stat* %st) nounwind
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %29, label %13

; <label>:13                                      ; preds = %9
  %14 = getelementptr inbounds %struct.stat* %st, i32 0, i32 8
  %15 = load i64* %14, align 8
  %16 = load %struct.file** %3, align 8
  %17 = getelementptr inbounds %struct.file* %16, i32 0, i32 2
  store i64 %15, i64* %17, align 8
  %18 = getelementptr inbounds %struct.stat* %st, i32 0, i32 13
  %19 = load i64* %18, align 8
  %20 = load %struct.file** %3, align 8
  %21 = getelementptr inbounds %struct.file* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = getelementptr inbounds %struct.stat* %st, i32 0, i32 3
  %23 = load i32* %22, align 4
  %24 = and i32 %23, 61440
  %25 = icmp eq i32 %24, 16384
  %26 = zext i1 %25 to i32
  %27 = load %struct.file** %3, align 8
  %28 = getelementptr inbounds %struct.file* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %32

; <label>:29                                      ; preds = %9, %0
  %30 = load %struct.file** %3, align 8
  %31 = getelementptr inbounds %struct.file* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  br label %32

; <label>:32                                      ; preds = %29, %13
  %33 = load %struct.file** %3, align 8
  %34 = getelementptr inbounds %struct.file* %33, i32 0, i32 4
  %35 = load i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %42, label %37

; <label>:37                                      ; preds = %32
  %38 = load %struct.file** %3, align 8
  %39 = getelementptr inbounds %struct.file* %38, i32 0, i32 1
  %40 = load i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br label %42

; <label>:42                                      ; preds = %37, %32
  %43 = phi i1 [ true, %32 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  ret i32 %44
}

define internal void @handle_file_request(%struct.mg_connection* %conn, i8* %path, %struct.file* %filep) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.file*, align 8
  %date = alloca [64 x i8], align 16
  %lm = alloca [64 x i8], align 16
  %etag = alloca [64 x i8], align 16
  %range = alloca [64 x i8], align 16
  %msg = alloca i8*, align 8
  %hdr = alloca i8*, align 8
  %curtime = alloca i64, align 8
  %cl = alloca i64, align 8
  %r1 = alloca i64, align 8
  %r2 = alloca i64, align 8
  %mime_vec = alloca %struct.vec, align 8
  %n = alloca i32, align 4
  %gz_path = alloca [4096 x i8], align 16
  %encoding = alloca i8*, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %path, i8** %2, align 8
  store %struct.file* %filep, %struct.file** %3, align 8
  store i8* getelementptr inbounds ([3 x i8]* @.str118, i32 0, i32 0), i8** %msg, align 8
  %4 = call i64 @time(i64* null) nounwind
  store i64 %4, i64* %curtime, align 8
  store i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8** %encoding, align 8
  %5 = load %struct.mg_connection** %1, align 8
  %6 = getelementptr inbounds %struct.mg_connection* %5, i32 0, i32 1
  %7 = load %struct.mg_context** %6, align 8
  %8 = load i8** %2, align 8
  call void @get_mime_type(%struct.mg_context* %7, i8* %8, %struct.vec* %mime_vec)
  %9 = load %struct.file** %3, align 8
  %10 = getelementptr inbounds %struct.file* %9, i32 0, i32 2
  %11 = load i64* %10, align 8
  store i64 %11, i64* %cl, align 8
  %12 = load %struct.mg_connection** %1, align 8
  %13 = getelementptr inbounds %struct.mg_connection* %12, i32 0, i32 15
  store i32 200, i32* %13, align 4
  %14 = getelementptr inbounds [64 x i8]* %range, i32 0, i64 0
  store i8 0, i8* %14, align 1
  %15 = load %struct.file** %3, align 8
  %16 = getelementptr inbounds %struct.file* %15, i32 0, i32 5
  %17 = load i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19                                      ; preds = %0
  %20 = getelementptr inbounds [4096 x i8]* %gz_path, i32 0, i32 0
  %21 = load i8** %2, align 8
  %22 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %20, i64 4096, i8* getelementptr inbounds ([6 x i8]* @.str251, i32 0, i32 0), i8* %21) nounwind
  %23 = getelementptr inbounds [4096 x i8]* %gz_path, i32 0, i32 0
  store i8* %23, i8** %2, align 8
  store i8* getelementptr inbounds ([25 x i8]* @.str312, i32 0, i32 0), i8** %encoding, align 8
  br label %24

; <label>:24                                      ; preds = %19, %0
  %25 = load %struct.mg_connection** %1, align 8
  %26 = load i8** %2, align 8
  %27 = load %struct.file** %3, align 8
  %28 = call i32 @mg_fopen(%struct.mg_connection* %25, i8* %26, i8* getelementptr inbounds ([3 x i8]* @.str93, i32 0, i32 0), %struct.file* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

; <label>:30                                      ; preds = %24
  %31 = load %struct.mg_connection** %1, align 8
  %32 = load i8** @http_500_error, align 8
  %33 = load i8** %2, align 8
  %34 = call i32* @__errno_location() nounwind readnone
  %35 = load i32* %34
  %36 = call i8* @strerror(i32 %35) nounwind
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %31, i32 500, i8* %32, i8* getelementptr inbounds ([14 x i8]* @.str94, i32 0, i32 0), i8* %33, i8* %36)
  br label %134

; <label>:37                                      ; preds = %24
  %38 = load %struct.file** %3, align 8
  call void @fclose_on_exec(%struct.file* %38)
  store i64 0, i64* %r2, align 8
  store i64 0, i64* %r1, align 8
  %39 = load %struct.mg_connection** %1, align 8
  %40 = call i8* @mg_get_header(%struct.mg_connection* %39, i8* getelementptr inbounds ([6 x i8]* @.str313, i32 0, i32 0))
  store i8* %40, i8** %hdr, align 8
  %41 = load i8** %hdr, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %95

; <label>:43                                      ; preds = %37
  %44 = load i8** %hdr, align 8
  %45 = call i32 @parse_range_header(i8* %44, i64* %r1, i64* %r2)
  store i32 %45, i32* %n, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %95

; <label>:47                                      ; preds = %43
  %48 = load i64* %r1, align 8
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %95

; <label>:50                                      ; preds = %47
  %51 = load i64* %r2, align 8
  %52 = icmp sge i64 %51, 0
  br i1 %52, label %53, label %95

; <label>:53                                      ; preds = %50
  %54 = load %struct.file** %3, align 8
  %55 = getelementptr inbounds %struct.file* %54, i32 0, i32 5
  %56 = load i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

; <label>:58                                      ; preds = %53
  %59 = load %struct.mg_connection** %1, align 8
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %59, i32 501, i8* getelementptr inbounds ([16 x i8]* @.str71, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8]* @.str314, i32 0, i32 0))
  br label %134

; <label>:60                                      ; preds = %53
  %61 = load %struct.mg_connection** %1, align 8
  %62 = getelementptr inbounds %struct.mg_connection* %61, i32 0, i32 15
  store i32 206, i32* %62, align 4
  %63 = load i32* %n, align 4
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %78

; <label>:65                                      ; preds = %60
  %66 = load i64* %r2, align 8
  %67 = load i64* %cl, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %71

; <label>:69                                      ; preds = %65
  %70 = load i64* %cl, align 8
  br label %73

; <label>:71                                      ; preds = %65
  %72 = load i64* %r2, align 8
  br label %73

; <label>:73                                      ; preds = %71, %69
  %74 = phi i64 [ %70, %69 ], [ %72, %71 ]
  %75 = load i64* %r1, align 8
  %76 = sub nsw i64 %74, %75
  %77 = add nsw i64 %76, 1
  br label %82

; <label>:78                                      ; preds = %60
  %79 = load i64* %cl, align 8
  %80 = load i64* %r1, align 8
  %81 = sub nsw i64 %79, %80
  br label %82

; <label>:82                                      ; preds = %78, %73
  %83 = phi i64 [ %77, %73 ], [ %81, %78 ]
  store i64 %83, i64* %cl, align 8
  %84 = load %struct.mg_connection** %1, align 8
  %85 = getelementptr inbounds [64 x i8]* %range, i32 0, i32 0
  %86 = load i64* %r1, align 8
  %87 = load i64* %r1, align 8
  %88 = load i64* %cl, align 8
  %89 = add nsw i64 %87, %88
  %90 = sub nsw i64 %89, 1
  %91 = load %struct.file** %3, align 8
  %92 = getelementptr inbounds %struct.file* %91, i32 0, i32 2
  %93 = load i64* %92, align 8
  %94 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %84, i8* %85, i64 64, i8* getelementptr inbounds ([35 x i8]* @.str315, i32 0, i32 0), i64 %86, i64 %90, i64 %93)
  store i8* getelementptr inbounds ([16 x i8]* @.str316, i32 0, i32 0), i8** %msg, align 8
  br label %95

; <label>:95                                      ; preds = %82, %50, %47, %43, %37
  %96 = getelementptr inbounds [64 x i8]* %date, i32 0, i32 0
  call void @gmt_time_string(i8* %96, i64 64, i64* %curtime)
  %97 = getelementptr inbounds [64 x i8]* %lm, i32 0, i32 0
  %98 = load %struct.file** %3, align 8
  %99 = getelementptr inbounds %struct.file* %98, i32 0, i32 1
  call void @gmt_time_string(i8* %97, i64 64, i64* %99)
  %100 = getelementptr inbounds [64 x i8]* %etag, i32 0, i32 0
  %101 = load %struct.file** %3, align 8
  call void @construct_etag(i8* %100, i64 64, %struct.file* %101)
  %102 = load %struct.mg_connection** %1, align 8
  %103 = load %struct.mg_connection** %1, align 8
  %104 = getelementptr inbounds %struct.mg_connection* %103, i32 0, i32 15
  %105 = load i32* %104, align 4
  %106 = load i8** %msg, align 8
  %107 = getelementptr inbounds [64 x i8]* %date, i32 0, i32 0
  %108 = getelementptr inbounds [64 x i8]* %lm, i32 0, i32 0
  %109 = getelementptr inbounds [64 x i8]* %etag, i32 0, i32 0
  %110 = getelementptr inbounds %struct.vec* %mime_vec, i32 0, i32 1
  %111 = load i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = getelementptr inbounds %struct.vec* %mime_vec, i32 0, i32 0
  %114 = load i8** %113, align 8
  %115 = load i64* %cl, align 8
  %116 = load %struct.mg_connection** %1, align 8
  %117 = call i8* @suggest_connection_header(%struct.mg_connection* %116)
  %118 = getelementptr inbounds [64 x i8]* %range, i32 0, i32 0
  %119 = load i8** %encoding, align 8
  %120 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %102, i8* getelementptr inbounds ([143 x i8]* @.str317, i32 0, i32 0), i32 %105, i8* %106, i8* %107, i8* %108, i8* %109, i32 %112, i8* %114, i64 %115, i8* %117, i8* %118, i8* %119, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0))
  %121 = load %struct.mg_connection** %1, align 8
  %122 = getelementptr inbounds %struct.mg_connection* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.mg_request_info* %122, i32 0, i32 0
  %124 = load i8** %123, align 8
  %125 = call i32 @strcmp(i8* %124, i8* getelementptr inbounds ([5 x i8]* @.str69, i32 0, i32 0)) nounwind readonly
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

; <label>:127                                     ; preds = %95
  %128 = load %struct.mg_connection** %1, align 8
  %129 = load %struct.file** %3, align 8
  %130 = load i64* %r1, align 8
  %131 = load i64* %cl, align 8
  call void @send_file_data(%struct.mg_connection* %128, %struct.file* %129, i64 %130, i64 %131)
  br label %132

; <label>:132                                     ; preds = %127, %95
  %133 = load %struct.file** %3, align 8
  call void @mg_fclose(%struct.file* %133)
  br label %134

; <label>:134                                     ; preds = %132, %58, %30
  ret void
}

define internal void @send_http_error(%struct.mg_connection* %conn, i32 %status, i8* %reason, i8* %fmt, ...) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %buf = alloca [8192 x i8], align 16
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %len = alloca i32, align 4
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i32 %status, i32* %2, align 4
  store i8* %reason, i8** %3, align 8
  store i8* %fmt, i8** %4, align 8
  store i32 0, i32* %len, align 4
  %5 = load i32* %2, align 4
  %6 = load %struct.mg_connection** %1, align 8
  %7 = getelementptr inbounds %struct.mg_connection* %6, i32 0, i32 15
  store i32 %5, i32* %7, align 4
  %8 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 0
  store i8 0, i8* %8, align 1
  %9 = load i32* %2, align 4
  %10 = icmp sgt i32 %9, 199
  br i1 %10, label %11, label %44

; <label>:11                                      ; preds = %0
  %12 = load i32* %2, align 4
  %13 = icmp ne i32 %12, 204
  br i1 %13, label %14, label %44

; <label>:14                                      ; preds = %11
  %15 = load i32* %2, align 4
  %16 = icmp ne i32 %15, 304
  br i1 %16, label %17, label %44

; <label>:17                                      ; preds = %14
  %18 = load %struct.mg_connection** %1, align 8
  %19 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %20 = load i32* %2, align 4
  %21 = load i8** %3, align 8
  %22 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %18, i8* %19, i64 8192, i8* getelementptr inbounds ([13 x i8]* @.str309, i32 0, i32 0), i32 %20, i8* %21)
  store i32 %22, i32* %len, align 4
  %23 = load i32* %len, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %len, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %25
  store i8 10, i8* %26, align 1
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %28 = bitcast %struct.__va_list_tag* %27 to i8*
  call void @llvm.va_start(i8* %28)
  %29 = load %struct.mg_connection** %1, align 8
  %30 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %31 = load i32* %len, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8* %30, i64 %32
  %34 = load i32* %len, align 4
  %35 = sext i32 %34 to i64
  %36 = sub i64 8192, %35
  %37 = load i8** %4, align 8
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %39 = call i32 @mg_vsnprintf(%struct.mg_connection* %29, i8* %33, i64 %36, i8* %37, %struct.__va_list_tag* %38)
  %40 = load i32* %len, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %len, align 4
  %42 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %43 = bitcast %struct.__va_list_tag* %42 to i8*
  call void @llvm.va_end(i8* %43)
  br label %44

; <label>:44                                      ; preds = %17, %14, %11, %0
  %45 = load %struct.mg_connection** %1, align 8
  %46 = load i32* %2, align 4
  %47 = load i8** %3, align 8
  %48 = load i32* %len, align 4
  %49 = load %struct.mg_connection** %1, align 8
  %50 = call i8* @suggest_connection_header(%struct.mg_connection* %49)
  %51 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %45, i8* getelementptr inbounds ([55 x i8]* @.str310, i32 0, i32 0), i32 %46, i8* %47, i32 %48, i8* %50)
  %52 = load %struct.mg_connection** %1, align 8
  %53 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %54 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %52, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* %53)
  %55 = sext i32 %54 to i64
  %56 = load %struct.mg_connection** %1, align 8
  %57 = getelementptr inbounds %struct.mg_connection* %56, i32 0, i32 6
  %58 = load i64* %57, align 8
  %59 = add nsw i64 %58, %55
  store i64 %59, i64* %57, align 8
  ret void
}

define i32 @mg_upload(%struct.mg_connection* %conn, i8* %destination_dir) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca i8*, align 8
  %content_type_header = alloca i8*, align 8
  %boundary_start = alloca i8*, align 8
  %buf = alloca [8192 x i8], align 16
  %path = alloca [4096 x i8], align 16
  %fname = alloca [1024 x i8], align 16
  %boundary = alloca [100 x i8], align 16
  %s = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %bl = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %headers_len = alloca i32, align 4
  %boundary_len = alloca i32, align 4
  %eof = alloca i32, align 4
  %len = alloca i32, align 4
  %num_uploaded_files = alloca i32, align 4
  store %struct.mg_connection* %conn, %struct.mg_connection** %2, align 8
  store i8* %destination_dir, i8** %3, align 8
  store i32 0, i32* %len, align 4
  store i32 0, i32* %num_uploaded_files, align 4
  %4 = load %struct.mg_connection** %2, align 8
  %5 = call i8* @mg_get_header(%struct.mg_connection* %4, i8* getelementptr inbounds ([13 x i8]* @.str18, i32 0, i32 0))
  store i8* %5, i8** %content_type_header, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %26, label %7

; <label>:7                                       ; preds = %0
  %8 = load i8** %content_type_header, align 8
  %9 = call i8* @mg_strcasestr(i8* %8, i8* getelementptr inbounds ([10 x i8]* @.str19, i32 0, i32 0))
  store i8* %9, i8** %boundary_start, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %26, label %11

; <label>:11                                      ; preds = %7
  %12 = load i8** %boundary_start, align 8
  %13 = getelementptr inbounds [100 x i8]* %boundary, i32 0, i32 0
  %14 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %12, i8* getelementptr inbounds ([19 x i8]* @.str20, i32 0, i32 0), i8* %13) nounwind
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

; <label>:16                                      ; preds = %11
  %17 = load i8** %boundary_start, align 8
  %18 = getelementptr inbounds [100 x i8]* %boundary, i32 0, i32 0
  %19 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %17, i8* getelementptr inbounds ([14 x i8]* @.str21, i32 0, i32 0), i8* %18) nounwind
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

; <label>:21                                      ; preds = %16, %11
  %22 = getelementptr inbounds [100 x i8]* %boundary, i32 0, i64 0
  %23 = load i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

; <label>:26                                      ; preds = %21, %16, %7, %0
  %27 = load i32* %num_uploaded_files, align 4
  store i32 %27, i32* %1
  br label %271

; <label>:28                                      ; preds = %21
  %29 = getelementptr inbounds [100 x i8]* %boundary, i32 0, i32 0
  %30 = call i64 @strlen(i8* %29) nounwind readonly
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %boundary_len, align 4
  %32 = load i32* %boundary_len, align 4
  %33 = add nsw i32 %32, 4
  store i32 %33, i32* %bl, align 4
  br label %34

; <label>:34                                      ; preds = %268, %28
  %35 = load i32* %len, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %41

; <label>:37                                      ; preds = %34
  %38 = load i32* %len, align 4
  %39 = icmp sle i32 %38, 8192
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %37
  br label %43

; <label>:41                                      ; preds = %37, %34
  call void @__assert_fail(i8* getelementptr inbounds ([37 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str4, i32 0, i32 0), i32 4317, i8* getelementptr inbounds ([52 x i8]* @__PRETTY_FUNCTION__.mg_upload, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %43

; <label>:43                                      ; preds = %42, %40
  br label %44

; <label>:44                                      ; preds = %55, %43
  %45 = load %struct.mg_connection** %2, align 8
  %46 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %47 = load i32* %len, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8* %46, i64 %48
  %50 = load i32* %len, align 4
  %51 = sext i32 %50 to i64
  %52 = sub i64 8192, %51
  %53 = call i32 @mg_read(%struct.mg_connection* %45, i8* %49, i64 %52)
  store i32 %53, i32* %n, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %59

; <label>:55                                      ; preds = %44
  %56 = load i32* %n, align 4
  %57 = load i32* %len, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %len, align 4
  br label %44

; <label>:59                                      ; preds = %44
  %60 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %61 = load i32* %len, align 4
  %62 = call i32 @get_request_len(i8* %60, i32 %61)
  store i32 %62, i32* %headers_len, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %65

; <label>:64                                      ; preds = %59
  br label %269

; <label>:65                                      ; preds = %59
  %66 = getelementptr inbounds [1024 x i8]* %fname, i32 0, i64 0
  store i8 0, i8* %66, align 1
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %67

; <label>:67                                      ; preds = %102, %65
  %68 = load i32* %i, align 4
  %69 = load i32* %headers_len, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %105

; <label>:71                                      ; preds = %67
  %72 = load i32* %i, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %73
  %75 = load i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 13
  br i1 %77, label %78, label %101

; <label>:78                                      ; preds = %71
  %79 = load i32* %i, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %81
  %83 = load i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 10
  br i1 %85, label %86, label %101

; <label>:86                                      ; preds = %78
  %87 = load i32* %i, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %89
  store i8 0, i8* %90, align 1
  %91 = load i32* %i, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %92
  store i8 0, i8* %93, align 1
  %94 = load i32* %j, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %95
  %97 = getelementptr inbounds [1024 x i8]* %fname, i32 0, i32 0
  %98 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %96, i8* getelementptr inbounds ([49 x i8]* @.str23, i32 0, i32 0), i8* %97) nounwind
  %99 = load i32* %i, align 4
  %100 = add nsw i32 %99, 2
  store i32 %100, i32* %j, align 4
  br label %101

; <label>:101                                     ; preds = %86, %78, %71
  br label %102

; <label>:102                                     ; preds = %101
  %103 = load i32* %i, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %i, align 4
  br label %67

; <label>:105                                     ; preds = %67
  %106 = getelementptr inbounds [1024 x i8]* %fname, i32 0, i64 0
  %107 = load i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

; <label>:110                                     ; preds = %105
  br label %269

; <label>:111                                     ; preds = %105
  %112 = load i32* %len, align 4
  %113 = load i32* %headers_len, align 4
  %114 = icmp sge i32 %112, %113
  br i1 %114, label %115, label %116

; <label>:115                                     ; preds = %111
  br label %118

; <label>:116                                     ; preds = %111
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str4, i32 0, i32 0), i32 4344, i8* getelementptr inbounds ([52 x i8]* @__PRETTY_FUNCTION__.mg_upload, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %118

; <label>:118                                     ; preds = %117, %115
  %119 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %120 = load i32* %headers_len, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %121
  %123 = load i32* %len, align 4
  %124 = load i32* %headers_len, align 4
  %125 = sub nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %119, i8* %122, i64 %126, i32 1, i1 false)
  %127 = load i32* %headers_len, align 4
  %128 = load i32* %len, align 4
  %129 = sub nsw i32 %128, %127
  store i32 %129, i32* %len, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  %130 = getelementptr inbounds [1024 x i8]* %fname, i32 0, i32 0
  %131 = call i8* @strrchr(i8* %130, i32 47) nounwind readonly
  store i8* %131, i8** %s, align 8
  %132 = icmp eq i8* %131, null
  br i1 %132, label %133, label %139

; <label>:133                                     ; preds = %118
  %134 = getelementptr inbounds [1024 x i8]* %fname, i32 0, i32 0
  %135 = call i8* @strrchr(i8* %134, i32 92) nounwind readonly
  store i8* %135, i8** %s, align 8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %139

; <label>:137                                     ; preds = %133
  %138 = getelementptr inbounds [1024 x i8]* %fname, i32 0, i32 0
  store i8* %138, i8** %s, align 8
  br label %139

; <label>:139                                     ; preds = %137, %133, %118
  %140 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %141 = load i8** %3, align 8
  %142 = load i8** %s, align 8
  %143 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %140, i64 4096, i8* getelementptr inbounds ([6 x i8]* @.str25, i32 0, i32 0), i8* %141, i8* %142) nounwind
  %144 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %145 = call %struct._IO_FILE* @fopen(i8* %144, i8* getelementptr inbounds ([3 x i8]* @.str26, i32 0, i32 0))
  store %struct._IO_FILE* %145, %struct._IO_FILE** %fp, align 8
  %146 = icmp eq %struct._IO_FILE* %145, null
  br i1 %146, label %147, label %148

; <label>:147                                     ; preds = %139
  br label %269

; <label>:148                                     ; preds = %139
  store i32 0, i32* %n, align 4
  store i32 0, i32* %eof, align 4
  br label %149

; <label>:149                                     ; preds = %241, %148
  %150 = load i32* %n, align 4
  %151 = load i32* %len, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %153

; <label>:153                                     ; preds = %199, %149
  %154 = load i32* %i, align 4
  %155 = load i32* %len, align 4
  %156 = load i32* %bl, align 4
  %157 = sub nsw i32 %155, %156
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %202

; <label>:159                                     ; preds = %153
  %160 = load i32* %i, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %161
  %163 = call i32 @memcmp(i8* %162, i8* getelementptr inbounds ([5 x i8]* @.str27, i32 0, i32 0), i64 4) nounwind readonly
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %198, label %165

; <label>:165                                     ; preds = %159
  %166 = load i32* %i, align 4
  %167 = add nsw i32 %166, 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %168
  %170 = getelementptr inbounds [100 x i8]* %boundary, i32 0, i32 0
  %171 = load i32* %boundary_len, align 4
  %172 = sext i32 %171 to i64
  %173 = call i32 @memcmp(i8* %169, i8* %170, i64 %172) nounwind readonly
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %198, label %175

; <label>:175                                     ; preds = %165
  %176 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %177 = load i32* %i, align 4
  %178 = sext i32 %177 to i64
  %179 = load %struct._IO_FILE** %fp, align 8
  %180 = call i64 @fwrite(i8* %176, i64 1, i64 %178, %struct._IO_FILE* %179)
  store i32 1, i32* %eof, align 4
  %181 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %182 = load i32* %i, align 4
  %183 = load i32* %bl, align 4
  %184 = add nsw i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %185
  %187 = load i32* %len, align 4
  %188 = load i32* %i, align 4
  %189 = load i32* %bl, align 4
  %190 = add nsw i32 %188, %189
  %191 = sub nsw i32 %187, %190
  %192 = sext i32 %191 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %181, i8* %186, i64 %192, i32 1, i1 false)
  %193 = load i32* %i, align 4
  %194 = load i32* %bl, align 4
  %195 = add nsw i32 %193, %194
  %196 = load i32* %len, align 4
  %197 = sub nsw i32 %196, %195
  store i32 %197, i32* %len, align 4
  br label %202

; <label>:198                                     ; preds = %165, %159
  br label %199

; <label>:199                                     ; preds = %198
  %200 = load i32* %i, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %i, align 4
  br label %153

; <label>:202                                     ; preds = %175, %153
  %203 = load i32* %eof, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %226, label %205

; <label>:205                                     ; preds = %202
  %206 = load i32* %len, align 4
  %207 = load i32* %bl, align 4
  %208 = icmp sgt i32 %206, %207
  br i1 %208, label %209, label %226

; <label>:209                                     ; preds = %205
  %210 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %211 = load i32* %len, align 4
  %212 = load i32* %bl, align 4
  %213 = sub nsw i32 %211, %212
  %214 = sext i32 %213 to i64
  %215 = load %struct._IO_FILE** %fp, align 8
  %216 = call i64 @fwrite(i8* %210, i64 1, i64 %214, %struct._IO_FILE* %215)
  %217 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %218 = load i32* %len, align 4
  %219 = load i32* %bl, align 4
  %220 = sub nsw i32 %218, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %221
  %223 = load i32* %bl, align 4
  %224 = sext i32 %223 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %217, i8* %222, i64 %224, i32 1, i1 false)
  %225 = load i32* %bl, align 4
  store i32 %225, i32* %len, align 4
  br label %226

; <label>:226                                     ; preds = %209, %205, %202
  br label %227

; <label>:227                                     ; preds = %226
  %228 = load i32* %eof, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %241, label %230

; <label>:230                                     ; preds = %227
  %231 = load %struct.mg_connection** %2, align 8
  %232 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %233 = load i32* %len, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8* %232, i64 %234
  %236 = load i32* %len, align 4
  %237 = sext i32 %236 to i64
  %238 = sub i64 8192, %237
  %239 = call i32 @mg_read(%struct.mg_connection* %231, i8* %235, i64 %238)
  store i32 %239, i32* %n, align 4
  %240 = icmp sgt i32 %239, 0
  br label %241

; <label>:241                                     ; preds = %230, %227
  %242 = phi i1 [ false, %227 ], [ %240, %230 ]
  br i1 %242, label %149, label %243

; <label>:243                                     ; preds = %241
  %244 = load %struct._IO_FILE** %fp, align 8
  %245 = call i32 @fclose(%struct._IO_FILE* %244)
  %246 = load i32* %eof, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %268

; <label>:248                                     ; preds = %243
  %249 = load i32* %num_uploaded_files, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %num_uploaded_files, align 4
  %251 = load %struct.mg_connection** %2, align 8
  %252 = getelementptr inbounds %struct.mg_connection* %251, i32 0, i32 1
  %253 = load %struct.mg_context** %252, align 8
  %254 = getelementptr inbounds %struct.mg_context* %253, i32 0, i32 3
  %255 = getelementptr inbounds %struct.mg_callbacks* %254, i32 0, i32 9
  %256 = load void (%struct.mg_connection*, i8*)** %255, align 8
  %257 = icmp ne void (%struct.mg_connection*, i8*)* %256, null
  br i1 %257, label %258, label %267

; <label>:258                                     ; preds = %248
  %259 = load %struct.mg_connection** %2, align 8
  %260 = getelementptr inbounds %struct.mg_connection* %259, i32 0, i32 1
  %261 = load %struct.mg_context** %260, align 8
  %262 = getelementptr inbounds %struct.mg_context* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.mg_callbacks* %262, i32 0, i32 9
  %264 = load void (%struct.mg_connection*, i8*)** %263, align 8
  %265 = load %struct.mg_connection** %2, align 8
  %266 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  call void %264(%struct.mg_connection* %265, i8* %266)
  br label %267

; <label>:267                                     ; preds = %258, %248
  br label %268

; <label>:268                                     ; preds = %267, %243
  br label %34

; <label>:269                                     ; preds = %147, %110, %64
  %270 = load i32* %num_uploaded_files, align 4
  store i32 %270, i32* %1
  br label %271

; <label>:271                                     ; preds = %269, %26
  %272 = load i32* %1
  ret i32 %272
}

define internal i32 @get_request_len(i8* %buf, i32 %buflen) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %s = alloca i8*, align 8
  %e = alloca i8*, align 8
  %len = alloca i32, align 4
  store i8* %buf, i8** %1, align 8
  store i32 %buflen, i32* %2, align 4
  store i32 0, i32* %len, align 4
  %3 = load i8** %1, align 8
  store i8* %3, i8** %s, align 8
  %4 = load i8** %s, align 8
  %5 = load i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8* %4, i64 %6
  %8 = getelementptr inbounds i8* %7, i64 -1
  store i8* %8, i8** %e, align 8
  br label %9

; <label>:9                                       ; preds = %100, %0
  %10 = load i32* %len, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %16

; <label>:12                                      ; preds = %9
  %13 = load i8** %s, align 8
  %14 = load i8** %e, align 8
  %15 = icmp ult i8* %13, %14
  br label %16

; <label>:16                                      ; preds = %12, %9
  %17 = phi i1 [ false, %9 ], [ %15, %12 ]
  br i1 %17, label %18, label %103

; <label>:18                                      ; preds = %16
  %19 = load i8** %s, align 8
  %20 = load i8* %19
  %21 = zext i8 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = call i16** @__ctype_b_loc() nounwind readnone
  %24 = load i16** %23
  %25 = getelementptr inbounds i16* %24, i64 %22
  %26 = load i16* %25
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 16384
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %46, label %30

; <label>:30                                      ; preds = %18
  %31 = load i8** %s, align 8
  %32 = load i8* %31
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 13
  br i1 %34, label %35, label %46

; <label>:35                                      ; preds = %30
  %36 = load i8** %s, align 8
  %37 = load i8* %36
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 10
  br i1 %39, label %40, label %46

; <label>:40                                      ; preds = %35
  %41 = load i8** %s, align 8
  %42 = load i8* %41
  %43 = zext i8 %42 to i32
  %44 = icmp slt i32 %43, 128
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %40
  store i32 -1, i32* %len, align 4
  br label %103

; <label>:46                                      ; preds = %40, %35, %30, %18
  %47 = load i8** %s, align 8
  %48 = getelementptr inbounds i8* %47, i64 0
  %49 = load i8* %48
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 10
  br i1 %51, label %52, label %66

; <label>:52                                      ; preds = %46
  %53 = load i8** %s, align 8
  %54 = getelementptr inbounds i8* %53, i64 1
  %55 = load i8* %54
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 10
  br i1 %57, label %58, label %66

; <label>:58                                      ; preds = %52
  %59 = load i8** %s, align 8
  %60 = load i8** %1, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = add nsw i32 %64, 2
  store i32 %65, i32* %len, align 4
  br label %98

; <label>:66                                      ; preds = %52, %46
  %67 = load i8** %s, align 8
  %68 = getelementptr inbounds i8* %67, i64 0
  %69 = load i8* %68
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 10
  br i1 %71, label %72, label %97

; <label>:72                                      ; preds = %66
  %73 = load i8** %s, align 8
  %74 = getelementptr inbounds i8* %73, i64 1
  %75 = load i8** %e, align 8
  %76 = icmp ult i8* %74, %75
  br i1 %76, label %77, label %97

; <label>:77                                      ; preds = %72
  %78 = load i8** %s, align 8
  %79 = getelementptr inbounds i8* %78, i64 1
  %80 = load i8* %79
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 13
  br i1 %82, label %83, label %97

; <label>:83                                      ; preds = %77
  %84 = load i8** %s, align 8
  %85 = getelementptr inbounds i8* %84, i64 2
  %86 = load i8* %85
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 10
  br i1 %88, label %89, label %97

; <label>:89                                      ; preds = %83
  %90 = load i8** %s, align 8
  %91 = load i8** %1, align 8
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  %96 = add nsw i32 %95, 3
  store i32 %96, i32* %len, align 4
  br label %97

; <label>:97                                      ; preds = %89, %83, %77, %72, %66
  br label %98

; <label>:98                                      ; preds = %97, %58
  br label %99

; <label>:99                                      ; preds = %98
  br label %100

; <label>:100                                     ; preds = %99
  %101 = load i8** %s, align 8
  %102 = getelementptr inbounds i8* %101, i32 1
  store i8* %102, i8** %s, align 8
  br label %9

; <label>:103                                     ; preds = %45, %16
  %104 = load i32* %len, align 4
  ret i32 %104
}

declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare i8* @strrchr(i8*, i32) nounwind readonly

declare i32 @memcmp(i8*, i8*, i64) nounwind readonly

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*)

define void @mg_close_connection(%struct.mg_connection* %conn) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  %2 = load %struct.mg_connection** %1, align 8
  %3 = getelementptr inbounds %struct.mg_connection* %2, i32 0, i32 3
  %4 = load %struct.ssl_ctx_st** %3, align 8
  %5 = icmp ne %struct.ssl_ctx_st* %4, null
  br i1 %5, label %6, label %12

; <label>:6                                       ; preds = %0
  %7 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 14, i32 1), align 8
  %8 = bitcast void ()* %7 to void (%struct.ssl_ctx_st*)*
  %9 = load %struct.mg_connection** %1, align 8
  %10 = getelementptr inbounds %struct.mg_connection* %9, i32 0, i32 3
  %11 = load %struct.ssl_ctx_st** %10, align 8
  call void %8(%struct.ssl_ctx_st* %11)
  br label %12

; <label>:12                                      ; preds = %6, %0
  %13 = load %struct.mg_connection** %1, align 8
  call void @close_connection(%struct.mg_connection* %13)
  %14 = load %struct.mg_connection** %1, align 8
  %15 = bitcast %struct.mg_connection* %14 to i8*
  call void @free(i8* %15) nounwind
  ret void
}

define internal void @close_connection(%struct.mg_connection* %conn) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  %2 = load %struct.mg_connection** %1, align 8
  %3 = getelementptr inbounds %struct.mg_connection* %2, i32 0, i32 11
  store i32 1, i32* %3, align 4
  %4 = load %struct.mg_connection** %1, align 8
  %5 = getelementptr inbounds %struct.mg_connection* %4, i32 0, i32 2
  %6 = load %struct.ssl_st** %5, align 8
  %7 = icmp ne %struct.ssl_st* %6, null
  br i1 %7, label %8, label %22

; <label>:8                                       ; preds = %0
  %9 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 20, i32 1), align 8
  %10 = bitcast void ()* %9 to i32 (%struct.ssl_st*)*
  %11 = load %struct.mg_connection** %1, align 8
  %12 = getelementptr inbounds %struct.mg_connection* %11, i32 0, i32 2
  %13 = load %struct.ssl_st** %12, align 8
  %14 = call i32 %10(%struct.ssl_st* %13)
  %15 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 0, i32 1), align 8
  %16 = bitcast void ()* %15 to void (%struct.ssl_st*)*
  %17 = load %struct.mg_connection** %1, align 8
  %18 = getelementptr inbounds %struct.mg_connection* %17, i32 0, i32 2
  %19 = load %struct.ssl_st** %18, align 8
  call void %16(%struct.ssl_st* %19)
  %20 = load %struct.mg_connection** %1, align 8
  %21 = getelementptr inbounds %struct.mg_connection* %20, i32 0, i32 2
  store %struct.ssl_st* null, %struct.ssl_st** %21, align 8
  br label %22

; <label>:22                                      ; preds = %8, %0
  %23 = load %struct.mg_connection** %1, align 8
  %24 = getelementptr inbounds %struct.mg_connection* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.socket* %24, i32 0, i32 0
  %26 = load i32* %25, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %33

; <label>:28                                      ; preds = %22
  %29 = load %struct.mg_connection** %1, align 8
  call void @close_socket_gracefully(%struct.mg_connection* %29)
  %30 = load %struct.mg_connection** %1, align 8
  %31 = getelementptr inbounds %struct.mg_connection* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.socket* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 4
  br label %33

; <label>:33                                      ; preds = %28, %22
  ret void
}

define %struct.mg_connection* @mg_connect(i8* %host, i32 %port, i32 %use_ssl, i8* %ebuf, i64 %ebuf_len) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %conn = alloca %struct.mg_connection*, align 8
  %sock = alloca i32, align 4
  %len = alloca i32, align 4
  store i8* %host, i8** %1, align 8
  store i32 %port, i32* %2, align 4
  store i32 %use_ssl, i32* %3, align 4
  store i8* %ebuf, i8** %4, align 8
  store i64 %ebuf_len, i64* %5, align 8
  store %struct.mg_connection* null, %struct.mg_connection** %conn, align 8
  %6 = load i8** %1, align 8
  %7 = load i32* %2, align 4
  %8 = load i32* %3, align 4
  %9 = load i8** %4, align 8
  %10 = load i64* %5, align 8
  %11 = call i32 @conn2(i8* %6, i32 %7, i32 %8, i8* %9, i64 %10)
  store i32 %11, i32* %sock, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %0
  br label %97

; <label>:14                                      ; preds = %0
  %15 = call noalias i8* @calloc(i64 1, i64 17640) nounwind
  %16 = bitcast i8* %15 to %struct.mg_connection*
  store %struct.mg_connection* %16, %struct.mg_connection** %conn, align 8
  %17 = icmp eq %struct.mg_connection* %16, null
  br i1 %17, label %18, label %27

; <label>:18                                      ; preds = %14
  %19 = load i8** %4, align 8
  %20 = load i64* %5, align 8
  %21 = call i32* @__errno_location() nounwind readnone
  %22 = load i32* %21
  %23 = call i8* @strerror(i32 %22) nounwind
  %24 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %19, i64 %20, i8* getelementptr inbounds ([13 x i8]* @.str28, i32 0, i32 0), i8* %23) nounwind
  %25 = load i32* %sock, align 4
  %26 = call i32 @close(i32 %25)
  br label %96

; <label>:27                                      ; preds = %14
  %28 = load i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %48

; <label>:30                                      ; preds = %27
  %31 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 8, i32 1), align 8
  %32 = bitcast void ()* %31 to %struct.ssl_ctx_st* (%struct.ssl_method_st*)*
  %33 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 17, i32 1), align 8
  %34 = bitcast void ()* %33 to %struct.ssl_method_st* ()*
  %35 = call %struct.ssl_method_st* %34()
  %36 = call %struct.ssl_ctx_st* %32(%struct.ssl_method_st* %35)
  %37 = load %struct.mg_connection** %conn, align 8
  %38 = getelementptr inbounds %struct.mg_connection* %37, i32 0, i32 3
  store %struct.ssl_ctx_st* %36, %struct.ssl_ctx_st** %38, align 8
  %39 = icmp eq %struct.ssl_ctx_st* %36, null
  br i1 %39, label %40, label %48

; <label>:40                                      ; preds = %30
  %41 = load i8** %4, align 8
  %42 = load i64* %5, align 8
  %43 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %41, i64 %42, i8* getelementptr inbounds ([18 x i8]* @.str29, i32 0, i32 0)) nounwind
  %44 = load i32* %sock, align 4
  %45 = call i32 @close(i32 %44)
  %46 = load %struct.mg_connection** %conn, align 8
  %47 = bitcast %struct.mg_connection* %46 to i8*
  call void @free(i8* %47) nounwind
  store %struct.mg_connection* null, %struct.mg_connection** %conn, align 8
  br label %95

; <label>:48                                      ; preds = %30, %27
  store i32 16, i32* %len, align 4
  %49 = load %struct.mg_connection** %conn, align 8
  %50 = getelementptr inbounds %struct.mg_connection* %49, i32 0, i32 12
  store i32 16384, i32* %50, align 4
  %51 = load %struct.mg_connection** %conn, align 8
  %52 = getelementptr inbounds %struct.mg_connection* %51, i64 1
  %53 = bitcast %struct.mg_connection* %52 to i8*
  %54 = load %struct.mg_connection** %conn, align 8
  %55 = getelementptr inbounds %struct.mg_connection* %54, i32 0, i32 9
  store i8* %53, i8** %55, align 8
  %56 = load %struct.mg_connection** %conn, align 8
  %57 = getelementptr inbounds %struct.mg_connection* %56, i32 0, i32 1
  store %struct.mg_context* @mg_connect.fake_ctx, %struct.mg_context** %57, align 8
  %58 = load i32* %sock, align 4
  %59 = load %struct.mg_connection** %conn, align 8
  %60 = getelementptr inbounds %struct.mg_connection* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.socket* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load i32* %sock, align 4
  %63 = load %struct.mg_connection** %conn, align 8
  %64 = getelementptr inbounds %struct.mg_connection* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.socket* %64, i32 0, i32 2
  %66 = bitcast %union.usa* %65 to %struct.sockaddr*
  %67 = call i32 @getsockname(i32 %62, %struct.sockaddr* %66, i32* %len) nounwind
  %68 = load i32* %3, align 4
  %69 = load %struct.mg_connection** %conn, align 8
  %70 = getelementptr inbounds %struct.mg_connection* %69, i32 0, i32 4
  %71 = and i32 %68, 1
  %72 = bitcast %struct.socket* %70 to i8*
  %73 = getelementptr i8* %72, i32 36
  %74 = bitcast i8* %73 to i32*
  %75 = and i32 %71, 1
  %76 = load i32* %74, align 4
  %77 = and i32 %76, -2
  %78 = or i32 %77, %75
  store i32 %78, i32* %74, align 4
  %79 = load i32* %3, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

; <label>:81                                      ; preds = %48
  %82 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 19, i32 1), align 8
  %83 = bitcast void ()* %82 to void (%struct.ssl_ctx_st*, i32, i32)*
  %84 = load %struct.mg_connection** %conn, align 8
  %85 = getelementptr inbounds %struct.mg_connection* %84, i32 0, i32 3
  %86 = load %struct.ssl_ctx_st** %85, align 8
  call void %83(%struct.ssl_ctx_st* %86, i32 0, i32 0)
  %87 = load %struct.mg_connection** %conn, align 8
  %88 = load %struct.mg_connection** %conn, align 8
  %89 = getelementptr inbounds %struct.mg_connection* %88, i32 0, i32 3
  %90 = load %struct.ssl_ctx_st** %89, align 8
  %91 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 2, i32 1), align 8
  %92 = bitcast void ()* %91 to i32 (%struct.ssl_st*)*
  %93 = call i32 @sslize(%struct.mg_connection* %87, %struct.ssl_ctx_st* %90, i32 (%struct.ssl_st*)* %92)
  br label %94

; <label>:94                                      ; preds = %81, %48
  br label %95

; <label>:95                                      ; preds = %94, %40
  br label %96

; <label>:96                                      ; preds = %95, %18
  br label %97

; <label>:97                                      ; preds = %96, %13
  %98 = load %struct.mg_connection** %conn, align 8
  ret %struct.mg_connection* %98
}

define internal i32 @conn2(i8* %host, i32 %port, i32 %use_ssl, i8* %ebuf, i64 %ebuf_len) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %sin = alloca %struct.sockaddr_in, align 4
  %he = alloca %struct.hostent*, align 8
  %sock = alloca i32, align 4
  store i8* %host, i8** %1, align 8
  store i32 %port, i32* %2, align 4
  store i32 %use_ssl, i32* %3, align 4
  store i8* %ebuf, i8** %4, align 8
  store i64 %ebuf_len, i64* %5, align 8
  store i32 -1, i32* %sock, align 4
  %6 = load i8** %1, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %12

; <label>:8                                       ; preds = %0
  %9 = load i8** %4, align 8
  %10 = load i64* %5, align 8
  %11 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %9, i64 %10, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str283, i32 0, i32 0)) nounwind
  br label %80

; <label>:12                                      ; preds = %0
  %13 = load i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

; <label>:15                                      ; preds = %12
  %16 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 17, i32 1), align 8
  %17 = bitcast void ()* %16 to %struct.ssl_method_st* ()*
  %18 = icmp eq %struct.ssl_method_st* ()* %17, null
  br i1 %18, label %19, label %23

; <label>:19                                      ; preds = %15
  %20 = load i8** %4, align 8
  %21 = load i64* %5, align 8
  %22 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %20, i64 %21, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str284, i32 0, i32 0)) nounwind
  br label %79

; <label>:23                                      ; preds = %15, %12
  %24 = load i8** %1, align 8
  %25 = call %struct.hostent* @gethostbyname(i8* %24)
  store %struct.hostent* %25, %struct.hostent** %he, align 8
  %26 = icmp eq %struct.hostent* %25, null
  br i1 %26, label %27, label %35

; <label>:27                                      ; preds = %23
  %28 = load i8** %4, align 8
  %29 = load i64* %5, align 8
  %30 = load i8** %1, align 8
  %31 = call i32* @__errno_location() nounwind readnone
  %32 = load i32* %31
  %33 = call i8* @strerror(i32 %32) nounwind
  %34 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %28, i64 %29, i8* getelementptr inbounds ([22 x i8]* @.str285, i32 0, i32 0), i8* %30, i8* %33) nounwind
  br label %78

; <label>:35                                      ; preds = %23
  %36 = call i32 @socket(i32 2, i32 1, i32 0) nounwind
  store i32 %36, i32* %sock, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %45

; <label>:38                                      ; preds = %35
  %39 = load i8** %4, align 8
  %40 = load i64* %5, align 8
  %41 = call i32* @__errno_location() nounwind readnone
  %42 = load i32* %41
  %43 = call i8* @strerror(i32 %42) nounwind
  %44 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %39, i64 %40, i8* getelementptr inbounds ([13 x i8]* @.str286, i32 0, i32 0), i8* %43) nounwind
  br label %77

; <label>:45                                      ; preds = %35
  %46 = load i32* %sock, align 4
  call void @set_close_on_exec(i32 %46)
  %47 = getelementptr inbounds %struct.sockaddr_in* %sin, i32 0, i32 0
  store i16 2, i16* %47, align 2
  %48 = load i32* %2, align 4
  %49 = trunc i32 %48 to i16
  %50 = call zeroext i16 @htons(i16 zeroext %49) nounwind readnone
  %51 = getelementptr inbounds %struct.sockaddr_in* %sin, i32 0, i32 1
  store i16 %50, i16* %51, align 2
  %52 = getelementptr inbounds %struct.sockaddr_in* %sin, i32 0, i32 2
  %53 = load %struct.hostent** %he, align 8
  %54 = getelementptr inbounds %struct.hostent* %53, i32 0, i32 4
  %55 = load i8*** %54, align 8
  %56 = getelementptr inbounds i8** %55, i64 0
  %57 = load i8** %56
  %58 = bitcast i8* %57 to %struct.in_addr*
  %59 = bitcast %struct.in_addr* %52 to i8*
  %60 = bitcast %struct.in_addr* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 4, i32 4, i1 false)
  %61 = load i32* %sock, align 4
  %62 = bitcast %struct.sockaddr_in* %sin to %struct.sockaddr*
  %63 = call i32 @connect(i32 %61, %struct.sockaddr* %62, i32 16)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

; <label>:65                                      ; preds = %45
  %66 = load i8** %4, align 8
  %67 = load i64* %5, align 8
  %68 = load i8** %1, align 8
  %69 = load i32* %2, align 4
  %70 = call i32* @__errno_location() nounwind readnone
  %71 = load i32* %70
  %72 = call i8* @strerror(i32 %71) nounwind
  %73 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %66, i64 %67, i8* getelementptr inbounds ([19 x i8]* @.str287, i32 0, i32 0), i8* %68, i32 %69, i8* %72) nounwind
  %74 = load i32* %sock, align 4
  %75 = call i32 @close(i32 %74)
  store i32 -1, i32* %sock, align 4
  br label %76

; <label>:76                                      ; preds = %65, %45
  br label %77

; <label>:77                                      ; preds = %76, %38
  br label %78

; <label>:78                                      ; preds = %77, %27
  br label %79

; <label>:79                                      ; preds = %78, %19
  br label %80

; <label>:80                                      ; preds = %79, %8
  %81 = load i32* %sock, align 4
  ret i32 %81
}

declare noalias i8* @calloc(i64, i64) nounwind

declare i8* @strerror(i32) nounwind

declare i32* @__errno_location() nounwind readnone

declare i32 @close(i32)

declare i32 @getsockname(i32, %struct.sockaddr*, i32*) nounwind

define internal i32 @sslize(%struct.mg_connection* %conn, %struct.ssl_ctx_st* %s, i32 (%struct.ssl_st*)* %func) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca %struct.ssl_ctx_st*, align 8
  %3 = alloca i32 (%struct.ssl_st*)*, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store %struct.ssl_ctx_st* %s, %struct.ssl_ctx_st** %2, align 8
  store i32 (%struct.ssl_st*)* %func, i32 (%struct.ssl_st*)** %3, align 8
  %4 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 7, i32 1), align 8
  %5 = bitcast void ()* %4 to %struct.ssl_st* (%struct.ssl_ctx_st*)*
  %6 = load %struct.ssl_ctx_st** %2, align 8
  %7 = call %struct.ssl_st* %5(%struct.ssl_ctx_st* %6)
  %8 = load %struct.mg_connection** %1, align 8
  %9 = getelementptr inbounds %struct.mg_connection* %8, i32 0, i32 2
  store %struct.ssl_st* %7, %struct.ssl_st** %9, align 8
  %10 = icmp ne %struct.ssl_st* %7, null
  br i1 %10, label %11, label %30

; <label>:11                                      ; preds = %0
  %12 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 6, i32 1), align 8
  %13 = bitcast void ()* %12 to i32 (%struct.ssl_st*, i32)*
  %14 = load %struct.mg_connection** %1, align 8
  %15 = getelementptr inbounds %struct.mg_connection* %14, i32 0, i32 2
  %16 = load %struct.ssl_st** %15, align 8
  %17 = load %struct.mg_connection** %1, align 8
  %18 = getelementptr inbounds %struct.mg_connection* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.socket* %18, i32 0, i32 0
  %20 = load i32* %19, align 4
  %21 = call i32 %13(%struct.ssl_st* %16, i32 %20)
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %30

; <label>:23                                      ; preds = %11
  %24 = load i32 (%struct.ssl_st*)** %3, align 8
  %25 = load %struct.mg_connection** %1, align 8
  %26 = getelementptr inbounds %struct.mg_connection* %25, i32 0, i32 2
  %27 = load %struct.ssl_st** %26, align 8
  %28 = call i32 %24(%struct.ssl_st* %27)
  %29 = icmp eq i32 %28, 1
  br label %30

; <label>:30                                      ; preds = %23, %11, %0
  %31 = phi i1 [ false, %11 ], [ false, %0 ], [ %29, %23 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

define %struct.mg_connection* @mg_download(i8* %host, i32 %port, i32 %use_ssl, i8* %ebuf, i64 %ebuf_len, i8* %fmt, ...) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %conn = alloca %struct.mg_connection*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %host, i8** %1, align 8
  store i32 %port, i32* %2, align 4
  store i32 %use_ssl, i32* %3, align 4
  store i8* %ebuf, i8** %4, align 8
  store i64 %ebuf_len, i64* %5, align 8
  store i8* %fmt, i8** %6, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %8 = bitcast %struct.__va_list_tag* %7 to i8*
  call void @llvm.va_start(i8* %8)
  %9 = load i8** %4, align 8
  %10 = getelementptr inbounds i8* %9, i64 0
  store i8 0, i8* %10
  %11 = load i8** %1, align 8
  %12 = load i32* %2, align 4
  %13 = load i32* %3, align 4
  %14 = load i8** %4, align 8
  %15 = load i64* %5, align 8
  %16 = call %struct.mg_connection* @mg_connect(i8* %11, i32 %12, i32 %13, i8* %14, i64 %15)
  store %struct.mg_connection* %16, %struct.mg_connection** %conn, align 8
  %17 = icmp eq %struct.mg_connection* %16, null
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %0
  br label %35

; <label>:19                                      ; preds = %0
  %20 = load %struct.mg_connection** %conn, align 8
  %21 = load i8** %6, align 8
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %23 = call i32 @mg_vprintf(%struct.mg_connection* %20, i8* %21, %struct.__va_list_tag* %22)
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %29

; <label>:25                                      ; preds = %19
  %26 = load i8** %4, align 8
  %27 = load i64* %5, align 8
  %28 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %26, i64 %27, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str30, i32 0, i32 0)) nounwind
  br label %34

; <label>:29                                      ; preds = %19
  %30 = load %struct.mg_connection** %conn, align 8
  %31 = load i8** %4, align 8
  %32 = load i64* %5, align 8
  %33 = call i32 @getreq(%struct.mg_connection* %30, i8* %31, i64 %32)
  br label %34

; <label>:34                                      ; preds = %29, %25
  br label %35

; <label>:35                                      ; preds = %34, %18
  %36 = load i8** %4, align 8
  %37 = getelementptr inbounds i8* %36, i64 0
  %38 = load i8* %37
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

; <label>:41                                      ; preds = %35
  %42 = load %struct.mg_connection** %conn, align 8
  %43 = icmp ne %struct.mg_connection* %42, null
  br i1 %43, label %44, label %46

; <label>:44                                      ; preds = %41
  %45 = load %struct.mg_connection** %conn, align 8
  call void @mg_close_connection(%struct.mg_connection* %45)
  store %struct.mg_connection* null, %struct.mg_connection** %conn, align 8
  br label %46

; <label>:46                                      ; preds = %44, %41, %35
  %47 = load %struct.mg_connection** %conn, align 8
  ret %struct.mg_connection* %47
}

define internal i32 @getreq(%struct.mg_connection* %conn, i8* %ebuf, i64 %ebuf_len) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %cl = alloca i8*, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %ebuf, i8** %2, align 8
  store i64 %ebuf_len, i64* %3, align 8
  %4 = load i8** %2, align 8
  %5 = getelementptr inbounds i8* %4, i64 0
  store i8 0, i8* %5
  %6 = load %struct.mg_connection** %1, align 8
  call void @reset_per_request_attributes(%struct.mg_connection* %6)
  %7 = load %struct.mg_connection** %1, align 8
  %8 = load %struct.mg_connection** %1, align 8
  %9 = getelementptr inbounds %struct.mg_connection* %8, i32 0, i32 9
  %10 = load i8** %9, align 8
  %11 = load %struct.mg_connection** %1, align 8
  %12 = getelementptr inbounds %struct.mg_connection* %11, i32 0, i32 12
  %13 = load i32* %12, align 4
  %14 = load %struct.mg_connection** %1, align 8
  %15 = getelementptr inbounds %struct.mg_connection* %14, i32 0, i32 14
  %16 = call i32 @read_request(%struct._IO_FILE* null, %struct.mg_connection* %7, i8* %10, i32 %13, i32* %15)
  %17 = load %struct.mg_connection** %1, align 8
  %18 = getelementptr inbounds %struct.mg_connection* %17, i32 0, i32 13
  store i32 %16, i32* %18, align 4
  %19 = load %struct.mg_connection** %1, align 8
  %20 = getelementptr inbounds %struct.mg_connection* %19, i32 0, i32 13
  %21 = load i32* %20, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %31, label %23

; <label>:23                                      ; preds = %0
  %24 = load %struct.mg_connection** %1, align 8
  %25 = getelementptr inbounds %struct.mg_connection* %24, i32 0, i32 14
  %26 = load i32* %25, align 4
  %27 = load %struct.mg_connection** %1, align 8
  %28 = getelementptr inbounds %struct.mg_connection* %27, i32 0, i32 13
  %29 = load i32* %28, align 4
  %30 = icmp sge i32 %26, %29
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %23, %0
  br label %34

; <label>:32                                      ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([61 x i8]* @.str277, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str4, i32 0, i32 0), i32 5015, i8* getelementptr inbounds ([51 x i8]* @__PRETTY_FUNCTION__.getreq, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %34

; <label>:34                                      ; preds = %33, %31
  %35 = load %struct.mg_connection** %1, align 8
  %36 = getelementptr inbounds %struct.mg_connection* %35, i32 0, i32 13
  %37 = load i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %51

; <label>:39                                      ; preds = %34
  %40 = load %struct.mg_connection** %1, align 8
  %41 = getelementptr inbounds %struct.mg_connection* %40, i32 0, i32 14
  %42 = load i32* %41, align 4
  %43 = load %struct.mg_connection** %1, align 8
  %44 = getelementptr inbounds %struct.mg_connection* %43, i32 0, i32 12
  %45 = load i32* %44, align 4
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %51

; <label>:47                                      ; preds = %39
  %48 = load i8** %2, align 8
  %49 = load i64* %3, align 8
  %50 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %48, i64 %49, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str278, i32 0, i32 0)) nounwind
  br label %118

; <label>:51                                      ; preds = %39, %34
  %52 = load %struct.mg_connection** %1, align 8
  %53 = getelementptr inbounds %struct.mg_connection* %52, i32 0, i32 13
  %54 = load i32* %53, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %60

; <label>:56                                      ; preds = %51
  %57 = load i8** %2, align 8
  %58 = load i64* %3, align 8
  %59 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %57, i64 %58, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str279, i32 0, i32 0)) nounwind
  br label %117

; <label>:60                                      ; preds = %51
  %61 = load %struct.mg_connection** %1, align 8
  %62 = getelementptr inbounds %struct.mg_connection* %61, i32 0, i32 9
  %63 = load i8** %62, align 8
  %64 = load %struct.mg_connection** %1, align 8
  %65 = getelementptr inbounds %struct.mg_connection* %64, i32 0, i32 12
  %66 = load i32* %65, align 4
  %67 = load %struct.mg_connection** %1, align 8
  %68 = getelementptr inbounds %struct.mg_connection* %67, i32 0, i32 0
  %69 = call i32 @parse_http_message(i8* %63, i32 %66, %struct.mg_request_info* %68)
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %71, label %81

; <label>:71                                      ; preds = %60
  %72 = load i8** %2, align 8
  %73 = load i64* %3, align 8
  %74 = load %struct.mg_connection** %1, align 8
  %75 = getelementptr inbounds %struct.mg_connection* %74, i32 0, i32 14
  %76 = load i32* %75, align 4
  %77 = load %struct.mg_connection** %1, align 8
  %78 = getelementptr inbounds %struct.mg_connection* %77, i32 0, i32 9
  %79 = load i8** %78, align 8
  %80 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %72, i64 %73, i8* getelementptr inbounds ([20 x i8]* @.str280, i32 0, i32 0), i32 %76, i8* %79) nounwind
  br label %116

; <label>:81                                      ; preds = %60
  %82 = load %struct.mg_connection** %1, align 8
  %83 = getelementptr inbounds %struct.mg_connection* %82, i32 0, i32 0
  %84 = call i8* @get_header(%struct.mg_request_info* %83, i8* getelementptr inbounds ([15 x i8]* @.str164, i32 0, i32 0))
  store i8* %84, i8** %cl, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %91

; <label>:86                                      ; preds = %81
  %87 = load i8** %cl, align 8
  %88 = call i64 @strtoll(i8* %87, i8** null, i32 10) nounwind
  %89 = load %struct.mg_connection** %1, align 8
  %90 = getelementptr inbounds %struct.mg_connection* %89, i32 0, i32 7
  store i64 %88, i64* %90, align 8
  br label %112

; <label>:91                                      ; preds = %81
  %92 = load %struct.mg_connection** %1, align 8
  %93 = getelementptr inbounds %struct.mg_connection* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.mg_request_info* %93, i32 0, i32 0
  %95 = load i8** %94, align 8
  %96 = call i32 @mg_strcasecmp(i8* %95, i8* getelementptr inbounds ([5 x i8]* @.str68, i32 0, i32 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

; <label>:98                                      ; preds = %91
  %99 = load %struct.mg_connection** %1, align 8
  %100 = getelementptr inbounds %struct.mg_connection* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.mg_request_info* %100, i32 0, i32 0
  %102 = load i8** %101, align 8
  %103 = call i32 @mg_strcasecmp(i8* %102, i8* getelementptr inbounds ([4 x i8]* @.str58, i32 0, i32 0))
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

; <label>:105                                     ; preds = %98, %91
  %106 = load %struct.mg_connection** %1, align 8
  %107 = getelementptr inbounds %struct.mg_connection* %106, i32 0, i32 7
  store i64 -1, i64* %107, align 8
  br label %111

; <label>:108                                     ; preds = %98
  %109 = load %struct.mg_connection** %1, align 8
  %110 = getelementptr inbounds %struct.mg_connection* %109, i32 0, i32 7
  store i64 0, i64* %110, align 8
  br label %111

; <label>:111                                     ; preds = %108, %105
  br label %112

; <label>:112                                     ; preds = %111, %86
  %113 = call i64 @time(i64* null) nounwind
  %114 = load %struct.mg_connection** %1, align 8
  %115 = getelementptr inbounds %struct.mg_connection* %114, i32 0, i32 5
  store i64 %113, i64* %115, align 8
  br label %116

; <label>:116                                     ; preds = %112, %71
  br label %117

; <label>:117                                     ; preds = %116, %56
  br label %118

; <label>:118                                     ; preds = %117, %47
  %119 = load i8** %2, align 8
  %120 = getelementptr inbounds i8* %119, i64 0
  %121 = load i8* %120
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 0
  %124 = zext i1 %123 to i32
  ret i32 %124
}

define void @mg_stop(%struct.mg_context* %ctx) nounwind uwtable {
  %1 = alloca %struct.mg_context*, align 8
  store %struct.mg_context* %ctx, %struct.mg_context** %1, align 8
  %2 = load %struct.mg_context** %1, align 8
  %3 = getelementptr inbounds %struct.mg_context* %2, i32 0, i32 0
  store volatile i32 1, i32* %3, align 4
  br label %4

; <label>:4                                       ; preds = %9, %0
  %5 = load %struct.mg_context** %1, align 8
  %6 = getelementptr inbounds %struct.mg_context* %5, i32 0, i32 0
  %7 = load volatile i32* %6, align 4
  %8 = icmp ne i32 %7, 2
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %4
  %10 = call i32 @usleep(i32 10000)
  br label %4

; <label>:11                                      ; preds = %4
  %12 = load %struct.mg_context** %1, align 8
  call void @free_context(%struct.mg_context* %12)
  ret void
}

declare i32 @usleep(i32)

define internal void @free_context(%struct.mg_context* %ctx) nounwind uwtable {
  %1 = alloca %struct.mg_context*, align 8
  %i = alloca i32, align 4
  store %struct.mg_context* %ctx, %struct.mg_context** %1, align 8
  store i32 0, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %21, %0
  %3 = load i32* %i, align 4
  %4 = icmp slt i32 %3, 24
  br i1 %4, label %5, label %24

; <label>:5                                       ; preds = %2
  %6 = load i32* %i, align 4
  %7 = sext i32 %6 to i64
  %8 = load %struct.mg_context** %1, align 8
  %9 = getelementptr inbounds %struct.mg_context* %8, i32 0, i32 2
  %10 = getelementptr inbounds [24 x i8*]* %9, i32 0, i64 %7
  %11 = load i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %20

; <label>:13                                      ; preds = %5
  %14 = load i32* %i, align 4
  %15 = sext i32 %14 to i64
  %16 = load %struct.mg_context** %1, align 8
  %17 = getelementptr inbounds %struct.mg_context* %16, i32 0, i32 2
  %18 = getelementptr inbounds [24 x i8*]* %17, i32 0, i64 %15
  %19 = load i8** %18, align 8
  call void @free(i8* %19) nounwind
  br label %20

; <label>:20                                      ; preds = %13, %5
  br label %21

; <label>:21                                      ; preds = %20
  %22 = load i32* %i, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %i, align 4
  br label %2

; <label>:24                                      ; preds = %2
  %25 = load %struct.mg_context** %1, align 8
  %26 = getelementptr inbounds %struct.mg_context* %25, i32 0, i32 1
  %27 = load %struct.ssl_ctx_st** %26, align 8
  %28 = icmp ne %struct.ssl_ctx_st* %27, null
  br i1 %28, label %29, label %35

; <label>:29                                      ; preds = %24
  %30 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 14, i32 1), align 8
  %31 = bitcast void ()* %30 to void (%struct.ssl_ctx_st*)*
  %32 = load %struct.mg_context** %1, align 8
  %33 = getelementptr inbounds %struct.mg_context* %32, i32 0, i32 1
  %34 = load %struct.ssl_ctx_st** %33, align 8
  call void %31(%struct.ssl_ctx_st* %34)
  br label %35

; <label>:35                                      ; preds = %29, %24
  %36 = load %union.pthread_mutex_t** @ssl_mutexes, align 8
  %37 = icmp ne %union.pthread_mutex_t* %36, null
  br i1 %37, label %38, label %41

; <label>:38                                      ; preds = %35
  %39 = load %union.pthread_mutex_t** @ssl_mutexes, align 8
  %40 = bitcast %union.pthread_mutex_t* %39 to i8*
  call void @free(i8* %40) nounwind
  store %union.pthread_mutex_t* null, %union.pthread_mutex_t** @ssl_mutexes, align 8
  br label %41

; <label>:41                                      ; preds = %38, %35
  %42 = load %struct.mg_context** %1, align 8
  %43 = bitcast %struct.mg_context* %42 to i8*
  call void @free(i8* %43) nounwind
  ret void
}

define %struct.mg_context* @mg_start(%struct.mg_callbacks* %callbacks, i8* %user_data, i8** %options) nounwind uwtable {
  %1 = alloca %struct.mg_context*, align 8
  %2 = alloca %struct.mg_callbacks*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %ctx = alloca %struct.mg_context*, align 8
  %name = alloca i8*, align 8
  %value = alloca i8*, align 8
  %default_value = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.mg_callbacks* %callbacks, %struct.mg_callbacks** %2, align 8
  store i8* %user_data, i8** %3, align 8
  store i8** %options, i8*** %4, align 8
  %5 = call noalias i8* @calloc(i64 1, i64 1320) nounwind
  %6 = bitcast i8* %5 to %struct.mg_context*
  store %struct.mg_context* %6, %struct.mg_context** %ctx, align 8
  %7 = icmp eq %struct.mg_context* %6, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  store %struct.mg_context* null, %struct.mg_context** %1
  br label %180

; <label>:9                                       ; preds = %0
  %10 = load %struct.mg_context** %ctx, align 8
  %11 = getelementptr inbounds %struct.mg_context* %10, i32 0, i32 3
  %12 = load %struct.mg_callbacks** %2, align 8
  %13 = bitcast %struct.mg_callbacks* %11 to i8*
  %14 = bitcast %struct.mg_callbacks* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 96, i32 8, i1 false)
  %15 = load i8** %3, align 8
  %16 = load %struct.mg_context** %ctx, align 8
  %17 = getelementptr inbounds %struct.mg_context* %16, i32 0, i32 4
  store i8* %15, i8** %17, align 8
  br label %18

; <label>:18                                      ; preds = %66, %9
  %19 = load i8*** %4, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %21, label %26

; <label>:21                                      ; preds = %18
  %22 = load i8*** %4, align 8
  %23 = getelementptr inbounds i8** %22, i32 1
  store i8** %23, i8*** %4, align 8
  %24 = load i8** %22
  store i8* %24, i8** %name, align 8
  %25 = icmp ne i8* %24, null
  br label %26

; <label>:26                                      ; preds = %21, %18
  %27 = phi i1 [ false, %18 ], [ %25, %21 ]
  br i1 %27, label %28, label %74

; <label>:28                                      ; preds = %26
  %29 = load i8** %name, align 8
  %30 = call i32 @get_option_index(i8* %29)
  store i32 %30, i32* %i, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %37

; <label>:32                                      ; preds = %28
  %33 = load %struct.mg_context** %ctx, align 8
  %34 = call %struct.mg_connection* @fc(%struct.mg_context* %33)
  %35 = load i8** %name, align 8
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %34, i8* getelementptr inbounds ([19 x i8]* @.str31, i32 0, i32 0), i8* %35)
  %36 = load %struct.mg_context** %ctx, align 8
  call void @free_context(%struct.mg_context* %36)
  store %struct.mg_context* null, %struct.mg_context** %1
  br label %180

; <label>:37                                      ; preds = %28
  %38 = load i8*** %4, align 8
  %39 = getelementptr inbounds i8** %38, i32 1
  store i8** %39, i8*** %4, align 8
  %40 = load i8** %38
  store i8* %40, i8** %value, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %47

; <label>:42                                      ; preds = %37
  %43 = load %struct.mg_context** %ctx, align 8
  %44 = call %struct.mg_connection* @fc(%struct.mg_context* %43)
  %45 = load i8** %name, align 8
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %44, i8* getelementptr inbounds ([32 x i8]* @.str32, i32 0, i32 0), i8* %45)
  %46 = load %struct.mg_context** %ctx, align 8
  call void @free_context(%struct.mg_context* %46)
  store %struct.mg_context* null, %struct.mg_context** %1
  br label %180

; <label>:47                                      ; preds = %37
  br label %48

; <label>:48                                      ; preds = %47
  %49 = load i32* %i, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.mg_context** %ctx, align 8
  %52 = getelementptr inbounds %struct.mg_context* %51, i32 0, i32 2
  %53 = getelementptr inbounds [24 x i8*]* %52, i32 0, i64 %50
  %54 = load i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %66

; <label>:56                                      ; preds = %48
  %57 = load %struct.mg_context** %ctx, align 8
  %58 = call %struct.mg_connection* @fc(%struct.mg_context* %57)
  %59 = load i8** %name, align 8
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %58, i8* getelementptr inbounds ([30 x i8]* @.str33, i32 0, i32 0), i8* %59)
  %60 = load i32* %i, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.mg_context** %ctx, align 8
  %63 = getelementptr inbounds %struct.mg_context* %62, i32 0, i32 2
  %64 = getelementptr inbounds [24 x i8*]* %63, i32 0, i64 %61
  %65 = load i8** %64, align 8
  call void @free(i8* %65) nounwind
  br label %66

; <label>:66                                      ; preds = %56, %48
  %67 = load i8** %value, align 8
  %68 = call i8* @mg_strdup(i8* %67)
  %69 = load i32* %i, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.mg_context** %ctx, align 8
  %72 = getelementptr inbounds %struct.mg_context* %71, i32 0, i32 2
  %73 = getelementptr inbounds [24 x i8*]* %72, i32 0, i64 %70
  store i8* %68, i8** %73, align 8
  br label %18

; <label>:74                                      ; preds = %26
  store i32 0, i32* %i, align 4
  br label %75

; <label>:75                                      ; preds = %108, %74
  %76 = load i32* %i, align 4
  %77 = mul nsw i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [49 x i8*]* @config_options, i32 0, i64 %78
  %80 = load i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %111

; <label>:82                                      ; preds = %75
  %83 = load i32* %i, align 4
  %84 = mul nsw i32 %83, 2
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [49 x i8*]* @config_options, i32 0, i64 %86
  %88 = load i8** %87, align 8
  store i8* %88, i8** %default_value, align 8
  %89 = load i32* %i, align 4
  %90 = sext i32 %89 to i64
  %91 = load %struct.mg_context** %ctx, align 8
  %92 = getelementptr inbounds %struct.mg_context* %91, i32 0, i32 2
  %93 = getelementptr inbounds [24 x i8*]* %92, i32 0, i64 %90
  %94 = load i8** %93, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %107

; <label>:96                                      ; preds = %82
  %97 = load i8** %default_value, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %107

; <label>:99                                      ; preds = %96
  %100 = load i8** %default_value, align 8
  %101 = call i8* @mg_strdup(i8* %100)
  %102 = load i32* %i, align 4
  %103 = sext i32 %102 to i64
  %104 = load %struct.mg_context** %ctx, align 8
  %105 = getelementptr inbounds %struct.mg_context* %104, i32 0, i32 2
  %106 = getelementptr inbounds [24 x i8*]* %105, i32 0, i64 %103
  store i8* %101, i8** %106, align 8
  br label %107

; <label>:107                                     ; preds = %99, %96, %82
  br label %108

; <label>:108                                     ; preds = %107
  %109 = load i32* %i, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %i, align 4
  br label %75

; <label>:111                                     ; preds = %75
  %112 = load %struct.mg_context** %ctx, align 8
  %113 = call i32 @set_gpass_option(%struct.mg_context* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %131

; <label>:115                                     ; preds = %111
  %116 = load %struct.mg_context** %ctx, align 8
  %117 = call i32 @set_ssl_option(%struct.mg_context* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %131

; <label>:119                                     ; preds = %115
  %120 = load %struct.mg_context** %ctx, align 8
  %121 = call i32 @set_ports_option(%struct.mg_context* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

; <label>:123                                     ; preds = %119
  %124 = load %struct.mg_context** %ctx, align 8
  %125 = call i32 @set_uid_option(%struct.mg_context* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

; <label>:127                                     ; preds = %123
  %128 = load %struct.mg_context** %ctx, align 8
  %129 = call i32 @set_acl_option(%struct.mg_context* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

; <label>:131                                     ; preds = %127, %123, %119, %115, %111
  %132 = load %struct.mg_context** %ctx, align 8
  call void @free_context(%struct.mg_context* %132)
  store %struct.mg_context* null, %struct.mg_context** %1
  br label %180

; <label>:133                                     ; preds = %127
  %134 = call void (i32)* (i32, void (i32)*)* @__sysv_signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) nounwind
  %135 = load %struct.mg_context** %ctx, align 8
  %136 = getelementptr inbounds %struct.mg_context* %135, i32 0, i32 8
  %137 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %136, %union.pthread_mutexattr_t* null) nounwind
  %138 = load %struct.mg_context** %ctx, align 8
  %139 = getelementptr inbounds %struct.mg_context* %138, i32 0, i32 9
  %140 = call i32 @pthread_cond_init(%union.pthread_cond_t* %139, %union.pthread_condattr_t* null) nounwind
  %141 = load %struct.mg_context** %ctx, align 8
  %142 = getelementptr inbounds %struct.mg_context* %141, i32 0, i32 14
  %143 = call i32 @pthread_cond_init(%union.pthread_cond_t* %142, %union.pthread_condattr_t* null) nounwind
  %144 = load %struct.mg_context** %ctx, align 8
  %145 = getelementptr inbounds %struct.mg_context* %144, i32 0, i32 13
  %146 = call i32 @pthread_cond_init(%union.pthread_cond_t* %145, %union.pthread_condattr_t* null) nounwind
  %147 = load %struct.mg_context** %ctx, align 8
  %148 = bitcast %struct.mg_context* %147 to i8*
  %149 = call i32 @mg_start_thread(i8* (i8*)* @master_thread, i8* %148)
  store i32 0, i32* %i, align 4
  br label %150

; <label>:150                                     ; preds = %175, %133
  %151 = load i32* %i, align 4
  %152 = load %struct.mg_context** %ctx, align 8
  %153 = getelementptr inbounds %struct.mg_context* %152, i32 0, i32 2
  %154 = getelementptr inbounds [24 x i8*]* %153, i32 0, i64 19
  %155 = load i8** %154, align 8
  %156 = call i32 @atoi(i8* %155) nounwind readonly
  %157 = icmp slt i32 %151, %156
  br i1 %157, label %158, label %178

; <label>:158                                     ; preds = %150
  %159 = load %struct.mg_context** %ctx, align 8
  %160 = bitcast %struct.mg_context* %159 to i8*
  %161 = call i32 @mg_start_thread(i8* (i8*)* @worker_thread, i8* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

; <label>:163                                     ; preds = %158
  %164 = load %struct.mg_context** %ctx, align 8
  %165 = call %struct.mg_connection* @fc(%struct.mg_context* %164)
  %166 = call i32* @__errno_location() nounwind readnone
  %167 = load i32* %166
  %168 = sext i32 %167 to i64
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %165, i8* getelementptr inbounds ([32 x i8]* @.str34, i32 0, i32 0), i64 %168)
  br label %174

; <label>:169                                     ; preds = %158
  %170 = load %struct.mg_context** %ctx, align 8
  %171 = getelementptr inbounds %struct.mg_context* %170, i32 0, i32 7
  %172 = load volatile i32* %171, align 4
  %173 = add nsw i32 %172, 1
  store volatile i32 %173, i32* %171, align 4
  br label %174

; <label>:174                                     ; preds = %169, %163
  br label %175

; <label>:175                                     ; preds = %174
  %176 = load i32* %i, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %i, align 4
  br label %150

; <label>:178                                     ; preds = %150
  %179 = load %struct.mg_context** %ctx, align 8
  store %struct.mg_context* %179, %struct.mg_context** %1
  br label %180

; <label>:180                                     ; preds = %178, %131, %42, %32, %8
  %181 = load %struct.mg_context** %1
  ret %struct.mg_context* %181
}

define internal void @cry(%struct.mg_connection* %conn, i8* %fmt, ...) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %buf = alloca [8192 x i8], align 16
  %src_addr = alloca [50 x i8], align 16
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  %timestamp = alloca i64, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %fmt, i8** %2, align 8
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %4 = bitcast %struct.__va_list_tag* %3 to i8*
  call void @llvm.va_start(i8* %4)
  %5 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %6 = load i8** %2, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %8 = call i32 @vsnprintf(i8* %5, i64 8192, i8* %6, %struct.__va_list_tag* %7) nounwind
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %10 = bitcast %struct.__va_list_tag* %9 to i8*
  call void @llvm.va_end(i8* %10)
  %11 = load %struct.mg_connection** %1, align 8
  %12 = getelementptr inbounds %struct.mg_connection* %11, i32 0, i32 1
  %13 = load %struct.mg_context** %12, align 8
  %14 = getelementptr inbounds %struct.mg_context* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.mg_callbacks* %14, i32 0, i32 2
  %16 = load i32 (%struct.mg_connection*, i8*)** %15, align 8
  %17 = icmp eq i32 (%struct.mg_connection*, i8*)* %16, null
  br i1 %17, label %29, label %18

; <label>:18                                      ; preds = %0
  %19 = load %struct.mg_connection** %1, align 8
  %20 = getelementptr inbounds %struct.mg_connection* %19, i32 0, i32 1
  %21 = load %struct.mg_context** %20, align 8
  %22 = getelementptr inbounds %struct.mg_context* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.mg_callbacks* %22, i32 0, i32 2
  %24 = load i32 (%struct.mg_connection*, i8*)** %23, align 8
  %25 = load %struct.mg_connection** %1, align 8
  %26 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %27 = call i32 %24(%struct.mg_connection* %25, i8* %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %92

; <label>:29                                      ; preds = %18, %0
  %30 = load %struct.mg_connection** %1, align 8
  %31 = getelementptr inbounds %struct.mg_connection* %30, i32 0, i32 1
  %32 = load %struct.mg_context** %31, align 8
  %33 = icmp eq %struct.mg_context* %32, null
  br i1 %33, label %42, label %34

; <label>:34                                      ; preds = %29
  %35 = load %struct.mg_connection** %1, align 8
  %36 = getelementptr inbounds %struct.mg_connection* %35, i32 0, i32 1
  %37 = load %struct.mg_context** %36, align 8
  %38 = getelementptr inbounds %struct.mg_context* %37, i32 0, i32 2
  %39 = getelementptr inbounds [24 x i8*]* %38, i32 0, i64 10
  %40 = load i8** %39, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %34, %29
  br label %51

; <label>:43                                      ; preds = %34
  %44 = load %struct.mg_connection** %1, align 8
  %45 = getelementptr inbounds %struct.mg_connection* %44, i32 0, i32 1
  %46 = load %struct.mg_context** %45, align 8
  %47 = getelementptr inbounds %struct.mg_context* %46, i32 0, i32 2
  %48 = getelementptr inbounds [24 x i8*]* %47, i32 0, i64 10
  %49 = load i8** %48, align 8
  %50 = call %struct._IO_FILE* @fopen(i8* %49, i8* getelementptr inbounds ([3 x i8]* @.str7, i32 0, i32 0))
  br label %51

; <label>:51                                      ; preds = %43, %42
  %52 = phi %struct._IO_FILE* [ null, %42 ], [ %50, %43 ]
  store %struct._IO_FILE* %52, %struct._IO_FILE** %fp, align 8
  %53 = load %struct._IO_FILE** %fp, align 8
  %54 = icmp ne %struct._IO_FILE* %53, null
  br i1 %54, label %55, label %91

; <label>:55                                      ; preds = %51
  %56 = load %struct._IO_FILE** %fp, align 8
  call void @flockfile(%struct._IO_FILE* %56) nounwind
  %57 = call i64 @time(i64* null) nounwind
  store i64 %57, i64* %timestamp, align 8
  %58 = getelementptr inbounds [50 x i8]* %src_addr, i32 0, i32 0
  %59 = load %struct.mg_connection** %1, align 8
  %60 = getelementptr inbounds %struct.mg_connection* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.socket* %60, i32 0, i32 2
  call void @sockaddr_to_string(i8* %58, i64 50, %union.usa* %61)
  %62 = load %struct._IO_FILE** %fp, align 8
  %63 = load i64* %timestamp, align 8
  %64 = getelementptr inbounds [50 x i8]* %src_addr, i32 0, i32 0
  %65 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([30 x i8]* @.str275, i32 0, i32 0), i64 %63, i8* %64)
  %66 = load %struct.mg_connection** %1, align 8
  %67 = getelementptr inbounds %struct.mg_connection* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.mg_request_info* %67, i32 0, i32 0
  %69 = load i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %82

; <label>:71                                      ; preds = %55
  %72 = load %struct._IO_FILE** %fp, align 8
  %73 = load %struct.mg_connection** %1, align 8
  %74 = getelementptr inbounds %struct.mg_connection* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.mg_request_info* %74, i32 0, i32 0
  %76 = load i8** %75, align 8
  %77 = load %struct.mg_connection** %1, align 8
  %78 = getelementptr inbounds %struct.mg_connection* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.mg_request_info* %78, i32 0, i32 1
  %80 = load i8** %79, align 8
  %81 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([8 x i8]* @.str276, i32 0, i32 0), i8* %76, i8* %80)
  br label %82

; <label>:82                                      ; preds = %71, %55
  %83 = load %struct._IO_FILE** %fp, align 8
  %84 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %85 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* %84)
  %86 = load %struct._IO_FILE** %fp, align 8
  %87 = call i32 @fputc(i32 10, %struct._IO_FILE* %86)
  %88 = load %struct._IO_FILE** %fp, align 8
  call void @funlockfile(%struct._IO_FILE* %88) nounwind
  %89 = load %struct._IO_FILE** %fp, align 8
  %90 = call i32 @fclose(%struct._IO_FILE* %89)
  br label %91

; <label>:91                                      ; preds = %82, %51
  br label %92

; <label>:92                                      ; preds = %91, %18
  ret void
}

define internal %struct.mg_connection* @fc(%struct.mg_context* %ctx) nounwind uwtable {
  %1 = alloca %struct.mg_context*, align 8
  store %struct.mg_context* %ctx, %struct.mg_context** %1, align 8
  %2 = load %struct.mg_context** %1, align 8
  store %struct.mg_context* %2, %struct.mg_context** getelementptr inbounds (%struct.mg_connection* @fc.fake_connection, i32 0, i32 1), align 8
  ret %struct.mg_connection* @fc.fake_connection
}

define internal i8* @mg_strdup(i8* %str) nounwind uwtable {
  %1 = alloca i8*, align 8
  store i8* %str, i8** %1, align 8
  %2 = load i8** %1, align 8
  %3 = load i8** %1, align 8
  %4 = call i64 @strlen(i8* %3) nounwind readonly
  %5 = call i8* @mg_strndup(i8* %2, i64 %4)
  ret i8* %5
}

define internal i32 @set_gpass_option(%struct.mg_context* %ctx) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mg_context*, align 8
  %file = alloca %struct.file, align 8
  %path = alloca i8*, align 8
  store %struct.mg_context* %ctx, %struct.mg_context** %2, align 8
  %3 = bitcast %struct.file* %file to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 48, i32 8, i1 false)
  %4 = bitcast i8* %3 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %5 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %4, i32 0, i32 6
  %6 = load %struct.mg_context** %2, align 8
  %7 = getelementptr inbounds %struct.mg_context* %6, i32 0, i32 2
  %8 = getelementptr inbounds [24 x i8*]* %7, i32 0, i64 11
  %9 = load i8** %8, align 8
  store i8* %9, i8** %path, align 8
  %10 = load i8** %path, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %25

; <label>:12                                      ; preds = %0
  %13 = load %struct.mg_context** %2, align 8
  %14 = call %struct.mg_connection* @fc(%struct.mg_context* %13)
  %15 = load i8** %path, align 8
  %16 = call i32 @mg_stat(%struct.mg_connection* %14, i8* %15, %struct.file* %file)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

; <label>:18                                      ; preds = %12
  %19 = load %struct.mg_context** %2, align 8
  %20 = call %struct.mg_connection* @fc(%struct.mg_context* %19)
  %21 = load i8** %path, align 8
  %22 = call i32* @__errno_location() nounwind readnone
  %23 = load i32* %22
  %24 = call i8* @strerror(i32 %23) nounwind
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %20, i8* getelementptr inbounds ([19 x i8]* @.str274, i32 0, i32 0), i8* %21, i8* %24)
  store i32 0, i32* %1
  br label %26

; <label>:25                                      ; preds = %12, %0
  store i32 1, i32* %1
  br label %26

; <label>:26                                      ; preds = %25, %18
  %27 = load i32* %1
  ret i32 %27
}

define internal i32 @set_ssl_option(%struct.mg_context* %ctx) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mg_context*, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %pem = alloca i8*, align 8
  store %struct.mg_context* %ctx, %struct.mg_context** %2, align 8
  %3 = load %struct.mg_context** %2, align 8
  %4 = getelementptr inbounds %struct.mg_context* %3, i32 0, i32 2
  %5 = getelementptr inbounds [24 x i8*]* %4, i32 0, i64 18
  %6 = load i8** %5, align 8
  store i8* %6, i8** %pem, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %15

; <label>:8                                       ; preds = %0
  %9 = load %struct.mg_context** %2, align 8
  %10 = getelementptr inbounds %struct.mg_context* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.mg_callbacks* %10, i32 0, i32 3
  %12 = load i32 (i8*, i8*)** %11, align 8
  %13 = icmp eq i32 (i8*, i8*)* %12, null
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %8
  store i32 1, i32* %1
  br label %133

; <label>:15                                      ; preds = %8, %0
  %16 = load %struct.mg_context** %2, align 8
  %17 = call i32 @load_dll(%struct.mg_context* %16, i8* getelementptr inbounds ([10 x i8]* @.str268, i32 0, i32 0), %struct.ssl_func* getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i32 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

; <label>:19                                      ; preds = %15
  %20 = load %struct.mg_context** %2, align 8
  %21 = call i32 @load_dll(%struct.mg_context* %20, i8* getelementptr inbounds ([13 x i8]* @.str269, i32 0, i32 0), %struct.ssl_func* getelementptr inbounds ([6 x %struct.ssl_func]* @crypto_sw, i32 0, i32 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

; <label>:23                                      ; preds = %19, %15
  store i32 0, i32* %1
  br label %133

; <label>:24                                      ; preds = %19
  %25 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 10, i32 1), align 8
  %26 = bitcast void ()* %25 to i32 ()*
  %27 = call i32 %26()
  %28 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 15, i32 1), align 8
  call void %28()
  %29 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 8, i32 1), align 8
  %30 = bitcast void ()* %29 to %struct.ssl_ctx_st* (%struct.ssl_method_st*)*
  %31 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 9, i32 1), align 8
  %32 = bitcast void ()* %31 to %struct.ssl_method_st* ()*
  %33 = call %struct.ssl_method_st* %32()
  %34 = call %struct.ssl_ctx_st* %30(%struct.ssl_method_st* %33)
  %35 = load %struct.mg_context** %2, align 8
  %36 = getelementptr inbounds %struct.mg_context* %35, i32 0, i32 1
  store %struct.ssl_ctx_st* %34, %struct.ssl_ctx_st** %36, align 8
  %37 = icmp eq %struct.ssl_ctx_st* %34, null
  br i1 %37, label %38, label %42

; <label>:38                                      ; preds = %24
  %39 = load %struct.mg_context** %2, align 8
  %40 = call %struct.mg_connection* @fc(%struct.mg_context* %39)
  %41 = call i8* @ssl_error()
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %40, i8* getelementptr inbounds ([31 x i8]* @.str270, i32 0, i32 0), i8* %41)
  store i32 0, i32* %1
  br label %133

; <label>:42                                      ; preds = %24
  %43 = load %struct.mg_context** %2, align 8
  %44 = getelementptr inbounds %struct.mg_context* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.mg_callbacks* %44, i32 0, i32 3
  %46 = load i32 (i8*, i8*)** %45, align 8
  %47 = icmp eq i32 (i8*, i8*)* %46, null
  br i1 %47, label %62, label %48

; <label>:48                                      ; preds = %42
  %49 = load %struct.mg_context** %2, align 8
  %50 = getelementptr inbounds %struct.mg_context* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.mg_callbacks* %50, i32 0, i32 3
  %52 = load i32 (i8*, i8*)** %51, align 8
  %53 = load %struct.mg_context** %2, align 8
  %54 = getelementptr inbounds %struct.mg_context* %53, i32 0, i32 1
  %55 = load %struct.ssl_ctx_st** %54, align 8
  %56 = bitcast %struct.ssl_ctx_st* %55 to i8*
  %57 = load %struct.mg_context** %2, align 8
  %58 = getelementptr inbounds %struct.mg_context* %57, i32 0, i32 4
  %59 = load i8** %58, align 8
  %60 = call i32 %52(i8* %56, i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %85, label %62

; <label>:62                                      ; preds = %48, %42
  %63 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 12, i32 1), align 8
  %64 = bitcast void ()* %63 to i32 (%struct.ssl_ctx_st*, i8*, i32)*
  %65 = load %struct.mg_context** %2, align 8
  %66 = getelementptr inbounds %struct.mg_context* %65, i32 0, i32 1
  %67 = load %struct.ssl_ctx_st** %66, align 8
  %68 = load i8** %pem, align 8
  %69 = call i32 %64(%struct.ssl_ctx_st* %67, i8* %68, i32 1)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %80, label %71

; <label>:71                                      ; preds = %62
  %72 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 11, i32 1), align 8
  %73 = bitcast void ()* %72 to i32 (%struct.ssl_ctx_st*, i8*, i32)*
  %74 = load %struct.mg_context** %2, align 8
  %75 = getelementptr inbounds %struct.mg_context* %74, i32 0, i32 1
  %76 = load %struct.ssl_ctx_st** %75, align 8
  %77 = load i8** %pem, align 8
  %78 = call i32 %73(%struct.ssl_ctx_st* %76, i8* %77, i32 1)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %85

; <label>:80                                      ; preds = %71, %62
  %81 = load %struct.mg_context** %2, align 8
  %82 = call %struct.mg_connection* @fc(%struct.mg_context* %81)
  %83 = load i8** %pem, align 8
  %84 = call i8* @ssl_error()
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %82, i8* getelementptr inbounds ([23 x i8]* @.str239, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @__func__.set_ssl_option, i32 0, i32 0), i8* %83, i8* %84)
  store i32 0, i32* %1
  br label %133

; <label>:85                                      ; preds = %71, %48
  %86 = load i8** %pem, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %96

; <label>:88                                      ; preds = %85
  %89 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 16, i32 1), align 8
  %90 = bitcast void ()* %89 to i32 (%struct.ssl_ctx_st*, i8*)*
  %91 = load %struct.mg_context** %2, align 8
  %92 = getelementptr inbounds %struct.mg_context* %91, i32 0, i32 1
  %93 = load %struct.ssl_ctx_st** %92, align 8
  %94 = load i8** %pem, align 8
  %95 = call i32 %90(%struct.ssl_ctx_st* %93, i8* %94)
  br label %96

; <label>:96                                      ; preds = %88, %85
  %97 = load void ()** getelementptr inbounds ([6 x %struct.ssl_func]* @crypto_sw, i32 0, i64 0, i32 1), align 8
  %98 = bitcast void ()* %97 to i32 ()*
  %99 = call i32 %98()
  %100 = sext i32 %99 to i64
  %101 = mul i64 40, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %size, align 4
  %103 = load i32* %size, align 4
  %104 = sext i32 %103 to i64
  %105 = call noalias i8* @malloc(i64 %104) nounwind
  %106 = bitcast i8* %105 to %union.pthread_mutex_t*
  store %union.pthread_mutex_t* %106, %union.pthread_mutex_t** @ssl_mutexes, align 8
  %107 = icmp eq %union.pthread_mutex_t* %106, null
  br i1 %107, label %108, label %112

; <label>:108                                     ; preds = %96
  %109 = load %struct.mg_context** %2, align 8
  %110 = call %struct.mg_connection* @fc(%struct.mg_context* %109)
  %111 = call i8* @ssl_error()
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %110, i8* getelementptr inbounds ([32 x i8]* @.str271, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @__func__.set_ssl_option, i32 0, i32 0), i8* %111)
  store i32 0, i32* %1
  br label %133

; <label>:112                                     ; preds = %96
  store i32 0, i32* %i, align 4
  br label %113

; <label>:113                                     ; preds = %125, %112
  %114 = load i32* %i, align 4
  %115 = load void ()** getelementptr inbounds ([6 x %struct.ssl_func]* @crypto_sw, i32 0, i64 0, i32 1), align 8
  %116 = bitcast void ()* %115 to i32 ()*
  %117 = call i32 %116()
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %128

; <label>:119                                     ; preds = %113
  %120 = load i32* %i, align 4
  %121 = sext i32 %120 to i64
  %122 = load %union.pthread_mutex_t** @ssl_mutexes, align 8
  %123 = getelementptr inbounds %union.pthread_mutex_t* %122, i64 %121
  %124 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %123, %union.pthread_mutexattr_t* null) nounwind
  br label %125

; <label>:125                                     ; preds = %119
  %126 = load i32* %i, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %i, align 4
  br label %113

; <label>:128                                     ; preds = %113
  %129 = load void ()** getelementptr inbounds ([6 x %struct.ssl_func]* @crypto_sw, i32 0, i64 1, i32 1), align 8
  %130 = bitcast void ()* %129 to void (void (i32, i32, i8*, i32)*)*
  call void %130(void (i32, i32, i8*, i32)* @ssl_locking_callback)
  %131 = load void ()** getelementptr inbounds ([6 x %struct.ssl_func]* @crypto_sw, i32 0, i64 2, i32 1), align 8
  %132 = bitcast void ()* %131 to void (i64 ()*)*
  call void %132(i64 ()* @ssl_id_callback)
  store i32 1, i32* %1
  br label %133

; <label>:133                                     ; preds = %128, %108, %80, %38, %23, %14
  %134 = load i32* %1
  ret i32 %134
}

define internal i32 @set_ports_option(%struct.mg_context* %ctx) nounwind uwtable {
  %1 = alloca %struct.mg_context*, align 8
  %list = alloca i8*, align 8
  %on = alloca i32, align 4
  %success = alloca i32, align 4
  %vec = alloca %struct.vec, align 8
  %so = alloca %struct.socket, align 4
  %ptr = alloca %struct.socket*, align 8
  store %struct.mg_context* %ctx, %struct.mg_context** %1, align 8
  %2 = load %struct.mg_context** %1, align 8
  %3 = getelementptr inbounds %struct.mg_context* %2, i32 0, i32 2
  %4 = getelementptr inbounds [24 x i8*]* %3, i32 0, i64 16
  %5 = load i8** %4, align 8
  store i8* %5, i8** %list, align 8
  store i32 1, i32* %on, align 4
  store i32 1, i32* %success, align 4
  br label %6

; <label>:6                                       ; preds = %133, %0
  %7 = load i32* %success, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

; <label>:9                                       ; preds = %6
  %10 = load i8** %list, align 8
  %11 = call i8* @next_option(i8* %10, %struct.vec* %vec, %struct.vec* null)
  store i8* %11, i8** %list, align 8
  %12 = icmp ne i8* %11, null
  br label %13

; <label>:13                                      ; preds = %9, %6
  %14 = phi i1 [ false, %6 ], [ %12, %9 ]
  br i1 %14, label %15, label %134

; <label>:15                                      ; preds = %13
  %16 = call i32 @parse_port_string(%struct.vec* %vec, %struct.socket* %so)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

; <label>:18                                      ; preds = %15
  %19 = load %struct.mg_context** %1, align 8
  %20 = call %struct.mg_connection* @fc(%struct.mg_context* %19)
  %21 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 1
  %22 = load i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 0
  %25 = load i8** %24, align 8
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %20, i8* getelementptr inbounds ([51 x i8]* @.str262, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @__func__.set_ports_option, i32 0, i32 0), i32 %23, i8* %25, i8* getelementptr inbounds ([23 x i8]* @.str263, i32 0, i32 0))
  store i32 0, i32* %success, align 4
  br label %133

; <label>:26                                      ; preds = %15
  %27 = bitcast %struct.socket* %so to i8*
  %28 = getelementptr i8* %27, i32 36
  %29 = bitcast i8* %28 to i32*
  %30 = load i32* %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

; <label>:33                                      ; preds = %26
  %34 = load %struct.mg_context** %1, align 8
  %35 = getelementptr inbounds %struct.mg_context* %34, i32 0, i32 1
  %36 = load %struct.ssl_ctx_st** %35, align 8
  %37 = icmp eq %struct.ssl_ctx_st* %36, null
  br i1 %37, label %38, label %41

; <label>:38                                      ; preds = %33
  %39 = load %struct.mg_context** %1, align 8
  %40 = call %struct.mg_connection* @fc(%struct.mg_context* %39)
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %40, i8* getelementptr inbounds ([55 x i8]* @.str264, i32 0, i32 0))
  store i32 0, i32* %success, align 4
  br label %132

; <label>:41                                      ; preds = %33, %26
  %42 = getelementptr inbounds %struct.socket* %so, i32 0, i32 1
  %43 = bitcast %union.usa* %42 to %struct.sockaddr*
  %44 = getelementptr inbounds %struct.sockaddr* %43, i32 0, i32 0
  %45 = load i16* %44, align 2
  %46 = zext i16 %45 to i32
  %47 = call i32 @socket(i32 %46, i32 1, i32 6) nounwind
  %48 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = icmp eq i32 %47, -1
  br i1 %49, label %76, label %50

; <label>:50                                      ; preds = %41
  %51 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  %52 = load i32* %51, align 4
  %53 = bitcast i32* %on to i8*
  %54 = call i32 @setsockopt(i32 %52, i32 1, i32 2, i8* %53, i32 4) nounwind
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %76, label %56

; <label>:56                                      ; preds = %50
  %57 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  %58 = load i32* %57, align 4
  %59 = getelementptr inbounds %struct.socket* %so, i32 0, i32 1
  %60 = bitcast %union.usa* %59 to %struct.sockaddr*
  %61 = getelementptr inbounds %struct.socket* %so, i32 0, i32 1
  %62 = bitcast %union.usa* %61 to %struct.sockaddr*
  %63 = getelementptr inbounds %struct.sockaddr* %62, i32 0, i32 0
  %64 = load i16* %63, align 2
  %65 = zext i16 %64 to i32
  %66 = icmp eq i32 %65, 2
  %67 = select i1 %66, i64 16, i64 16
  %68 = trunc i64 %67 to i32
  %69 = call i32 @bind(i32 %58, %struct.sockaddr* %60, i32 %68) nounwind
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

; <label>:71                                      ; preds = %56
  %72 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  %73 = load i32* %72, align 4
  %74 = call i32 @listen(i32 %73, i32 128) nounwind
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %92

; <label>:76                                      ; preds = %71, %56, %50, %41
  %77 = load %struct.mg_context** %1, align 8
  %78 = call %struct.mg_connection* @fc(%struct.mg_context* %77)
  %79 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 1
  %80 = load i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 0
  %83 = load i8** %82, align 8
  %84 = call i32* @__errno_location() nounwind readnone
  %85 = load i32* %84
  %86 = call i32* @__errno_location() nounwind readnone
  %87 = load i32* %86
  %88 = call i8* @strerror(i32 %87) nounwind
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %78, i8* getelementptr inbounds ([33 x i8]* @.str265, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @__func__.set_ports_option, i32 0, i32 0), i32 %81, i8* %83, i32 %85, i8* %88)
  %89 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  %90 = load i32* %89, align 4
  %91 = call i32 @close(i32 %90)
  store i32 0, i32* %success, align 4
  br label %131

; <label>:92                                      ; preds = %71
  %93 = load %struct.mg_context** %1, align 8
  %94 = getelementptr inbounds %struct.mg_context* %93, i32 0, i32 5
  %95 = load %struct.socket** %94, align 8
  %96 = bitcast %struct.socket* %95 to i8*
  %97 = load %struct.mg_context** %1, align 8
  %98 = getelementptr inbounds %struct.mg_context* %97, i32 0, i32 6
  %99 = load i32* %98, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 40
  %103 = call i8* @realloc(i8* %96, i64 %102) nounwind
  %104 = bitcast i8* %103 to %struct.socket*
  store %struct.socket* %104, %struct.socket** %ptr, align 8
  %105 = icmp eq %struct.socket* %104, null
  br i1 %105, label %106, label %110

; <label>:106                                     ; preds = %92
  %107 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  %108 = load i32* %107, align 4
  %109 = call i32 @close(i32 %108)
  store i32 0, i32* %success, align 4
  br label %130

; <label>:110                                     ; preds = %92
  %111 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  %112 = load i32* %111, align 4
  call void @set_close_on_exec(i32 %112)
  %113 = load %struct.socket** %ptr, align 8
  %114 = load %struct.mg_context** %1, align 8
  %115 = getelementptr inbounds %struct.mg_context* %114, i32 0, i32 5
  store %struct.socket* %113, %struct.socket** %115, align 8
  %116 = load %struct.mg_context** %1, align 8
  %117 = getelementptr inbounds %struct.mg_context* %116, i32 0, i32 6
  %118 = load i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = load %struct.mg_context** %1, align 8
  %121 = getelementptr inbounds %struct.mg_context* %120, i32 0, i32 5
  %122 = load %struct.socket** %121, align 8
  %123 = getelementptr inbounds %struct.socket* %122, i64 %119
  %124 = bitcast %struct.socket* %123 to i8*
  %125 = bitcast %struct.socket* %so to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %124, i8* %125, i64 40, i32 4, i1 false)
  %126 = load %struct.mg_context** %1, align 8
  %127 = getelementptr inbounds %struct.mg_context* %126, i32 0, i32 6
  %128 = load i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  br label %130

; <label>:130                                     ; preds = %110, %106
  br label %131

; <label>:131                                     ; preds = %130, %76
  br label %132

; <label>:132                                     ; preds = %131, %38
  br label %133

; <label>:133                                     ; preds = %132, %18
  br label %6

; <label>:134                                     ; preds = %13
  %135 = load i32* %success, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

; <label>:137                                     ; preds = %134
  %138 = load %struct.mg_context** %1, align 8
  call void @close_all_listening_sockets(%struct.mg_context* %138)
  br label %139

; <label>:139                                     ; preds = %137, %134
  %140 = load i32* %success, align 4
  ret i32 %140
}

define internal i32 @set_uid_option(%struct.mg_context* %ctx) nounwind uwtable {
  %1 = alloca %struct.mg_context*, align 8
  %pw = alloca %struct.passwd*, align 8
  %uid = alloca i8*, align 8
  %success = alloca i32, align 4
  store %struct.mg_context* %ctx, %struct.mg_context** %1, align 8
  %2 = load %struct.mg_context** %1, align 8
  %3 = getelementptr inbounds %struct.mg_context* %2, i32 0, i32 2
  %4 = getelementptr inbounds [24 x i8*]* %3, i32 0, i64 20
  %5 = load i8** %4, align 8
  store i8* %5, i8** %uid, align 8
  store i32 0, i32* %success, align 4
  %6 = load i8** %uid, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  store i32 1, i32* %success, align 4
  br label %47

; <label>:9                                       ; preds = %0
  %10 = load i8** %uid, align 8
  %11 = call %struct.passwd* @getpwnam(i8* %10)
  store %struct.passwd* %11, %struct.passwd** %pw, align 8
  %12 = icmp eq %struct.passwd* %11, null
  br i1 %12, label %13, label %17

; <label>:13                                      ; preds = %9
  %14 = load %struct.mg_context** %1, align 8
  %15 = call %struct.mg_connection* @fc(%struct.mg_context* %14)
  %16 = load i8** %uid, align 8
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %15, i8* getelementptr inbounds ([22 x i8]* @.str259, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @__func__.set_uid_option, i32 0, i32 0), i8* %16)
  br label %46

; <label>:17                                      ; preds = %9
  %18 = load %struct.passwd** %pw, align 8
  %19 = getelementptr inbounds %struct.passwd* %18, i32 0, i32 3
  %20 = load i32* %19, align 4
  %21 = call i32 @setgid(i32 %20) nounwind
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %30

; <label>:23                                      ; preds = %17
  %24 = load %struct.mg_context** %1, align 8
  %25 = call %struct.mg_connection* @fc(%struct.mg_context* %24)
  %26 = load i8** %uid, align 8
  %27 = call i32* @__errno_location() nounwind readnone
  %28 = load i32* %27
  %29 = call i8* @strerror(i32 %28) nounwind
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %25, i8* getelementptr inbounds ([19 x i8]* @.str260, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @__func__.set_uid_option, i32 0, i32 0), i8* %26, i8* %29)
  br label %45

; <label>:30                                      ; preds = %17
  %31 = load %struct.passwd** %pw, align 8
  %32 = getelementptr inbounds %struct.passwd* %31, i32 0, i32 2
  %33 = load i32* %32, align 4
  %34 = call i32 @setuid(i32 %33) nounwind
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %43

; <label>:36                                      ; preds = %30
  %37 = load %struct.mg_context** %1, align 8
  %38 = call %struct.mg_connection* @fc(%struct.mg_context* %37)
  %39 = load i8** %uid, align 8
  %40 = call i32* @__errno_location() nounwind readnone
  %41 = load i32* %40
  %42 = call i8* @strerror(i32 %41) nounwind
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %38, i8* getelementptr inbounds ([19 x i8]* @.str261, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @__func__.set_uid_option, i32 0, i32 0), i8* %39, i8* %42)
  br label %44

; <label>:43                                      ; preds = %30
  store i32 1, i32* %success, align 4
  br label %44

; <label>:44                                      ; preds = %43, %36
  br label %45

; <label>:45                                      ; preds = %44, %23
  br label %46

; <label>:46                                      ; preds = %45, %13
  br label %47

; <label>:47                                      ; preds = %46, %8
  %48 = load i32* %success, align 4
  ret i32 %48
}

define internal i32 @set_acl_option(%struct.mg_context* %ctx) nounwind uwtable {
  %1 = alloca %struct.mg_context*, align 8
  store %struct.mg_context* %ctx, %struct.mg_context** %1, align 8
  %2 = load %struct.mg_context** %1, align 8
  %3 = call i32 @check_acl(%struct.mg_context* %2, i32 2130706433)
  %4 = icmp ne i32 %3, -1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

declare void (i32)* @__sysv_signal(i32, void (i32)*) nounwind

declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) nounwind

declare i32 @pthread_cond_init(%union.pthread_cond_t*, %union.pthread_condattr_t*) nounwind

define internal i8* @master_thread(i8* %thread_func_param) nounwind uwtable {
  %1 = alloca i8*, align 8
  %ctx = alloca %struct.mg_context*, align 8
  %pfd = alloca %struct.pollfd*, align 8
  %i = alloca i32, align 4
  store i8* %thread_func_param, i8** %1, align 8
  %2 = load i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.mg_context*
  store %struct.mg_context* %3, %struct.mg_context** %ctx, align 8
  %4 = load %struct.mg_context** %ctx, align 8
  %5 = getelementptr inbounds %struct.mg_context* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.mg_callbacks* %5, i32 0, i32 10
  %7 = load void (i8*, i8**)** %6, align 8
  %8 = icmp ne void (i8*, i8**)* %7, null
  br i1 %8, label %9, label %17

; <label>:9                                       ; preds = %0
  %10 = load %struct.mg_context** %ctx, align 8
  %11 = getelementptr inbounds %struct.mg_context* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.mg_callbacks* %11, i32 0, i32 10
  %13 = load void (i8*, i8**)** %12, align 8
  %14 = load %struct.mg_context** %ctx, align 8
  %15 = getelementptr inbounds %struct.mg_context* %14, i32 0, i32 4
  %16 = bitcast i8** %15 to i8*
  call void %13(i8* %16, i8** null)
  br label %17

; <label>:17                                      ; preds = %9, %0
  %18 = load %struct.mg_context** %ctx, align 8
  %19 = getelementptr inbounds %struct.mg_context* %18, i32 0, i32 6
  %20 = load i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = call noalias i8* @calloc(i64 %21, i64 8) nounwind
  %23 = bitcast i8* %22 to %struct.pollfd*
  store %struct.pollfd* %23, %struct.pollfd** %pfd, align 8
  br label %24

; <label>:24                                      ; preds = %106, %17
  %25 = load %struct.pollfd** %pfd, align 8
  %26 = icmp ne %struct.pollfd* %25, null
  br i1 %26, label %27, label %32

; <label>:27                                      ; preds = %24
  %28 = load %struct.mg_context** %ctx, align 8
  %29 = getelementptr inbounds %struct.mg_context* %28, i32 0, i32 0
  %30 = load volatile i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br label %32

; <label>:32                                      ; preds = %27, %24
  %33 = phi i1 [ false, %24 ], [ %31, %27 ]
  br i1 %33, label %34, label %107

; <label>:34                                      ; preds = %32
  store i32 0, i32* %i, align 4
  br label %35

; <label>:35                                      ; preds = %60, %34
  %36 = load i32* %i, align 4
  %37 = load %struct.mg_context** %ctx, align 8
  %38 = getelementptr inbounds %struct.mg_context* %37, i32 0, i32 6
  %39 = load i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %63

; <label>:41                                      ; preds = %35
  %42 = load i32* %i, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.mg_context** %ctx, align 8
  %45 = getelementptr inbounds %struct.mg_context* %44, i32 0, i32 5
  %46 = load %struct.socket** %45, align 8
  %47 = getelementptr inbounds %struct.socket* %46, i64 %43
  %48 = getelementptr inbounds %struct.socket* %47, i32 0, i32 0
  %49 = load i32* %48, align 4
  %50 = load i32* %i, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.pollfd** %pfd, align 8
  %53 = getelementptr inbounds %struct.pollfd* %52, i64 %51
  %54 = getelementptr inbounds %struct.pollfd* %53, i32 0, i32 0
  store i32 %49, i32* %54, align 4
  %55 = load i32* %i, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.pollfd** %pfd, align 8
  %58 = getelementptr inbounds %struct.pollfd* %57, i64 %56
  %59 = getelementptr inbounds %struct.pollfd* %58, i32 0, i32 1
  store i16 1, i16* %59, align 2
  br label %60

; <label>:60                                      ; preds = %41
  %61 = load i32* %i, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %i, align 4
  br label %35

; <label>:63                                      ; preds = %35
  %64 = load %struct.pollfd** %pfd, align 8
  %65 = load %struct.mg_context** %ctx, align 8
  %66 = getelementptr inbounds %struct.mg_context* %65, i32 0, i32 6
  %67 = load i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = call i32 @poll(%struct.pollfd* %64, i64 %68, i32 200)
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %106

; <label>:71                                      ; preds = %63
  store i32 0, i32* %i, align 4
  br label %72

; <label>:72                                      ; preds = %102, %71
  %73 = load i32* %i, align 4
  %74 = load %struct.mg_context** %ctx, align 8
  %75 = getelementptr inbounds %struct.mg_context* %74, i32 0, i32 6
  %76 = load i32* %75, align 4
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %105

; <label>:78                                      ; preds = %72
  %79 = load %struct.mg_context** %ctx, align 8
  %80 = getelementptr inbounds %struct.mg_context* %79, i32 0, i32 0
  %81 = load volatile i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %101

; <label>:83                                      ; preds = %78
  %84 = load i32* %i, align 4
  %85 = sext i32 %84 to i64
  %86 = load %struct.pollfd** %pfd, align 8
  %87 = getelementptr inbounds %struct.pollfd* %86, i64 %85
  %88 = getelementptr inbounds %struct.pollfd* %87, i32 0, i32 2
  %89 = load i16* %88, align 2
  %90 = sext i16 %89 to i32
  %91 = and i32 %90, 1
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

; <label>:93                                      ; preds = %83
  %94 = load i32* %i, align 4
  %95 = sext i32 %94 to i64
  %96 = load %struct.mg_context** %ctx, align 8
  %97 = getelementptr inbounds %struct.mg_context* %96, i32 0, i32 5
  %98 = load %struct.socket** %97, align 8
  %99 = getelementptr inbounds %struct.socket* %98, i64 %95
  %100 = load %struct.mg_context** %ctx, align 8
  call void @accept_new_connection(%struct.socket* %99, %struct.mg_context* %100)
  br label %101

; <label>:101                                     ; preds = %93, %83, %78
  br label %102

; <label>:102                                     ; preds = %101
  %103 = load i32* %i, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %i, align 4
  br label %72

; <label>:105                                     ; preds = %72
  br label %106

; <label>:106                                     ; preds = %105, %63
  br label %24

; <label>:107                                     ; preds = %32
  %108 = load %struct.pollfd** %pfd, align 8
  %109 = bitcast %struct.pollfd* %108 to i8*
  call void @free(i8* %109) nounwind
  %110 = load %struct.mg_context** %ctx, align 8
  call void @close_all_listening_sockets(%struct.mg_context* %110)
  %111 = load %struct.mg_context** %ctx, align 8
  %112 = getelementptr inbounds %struct.mg_context* %111, i32 0, i32 13
  %113 = call i32 @pthread_cond_broadcast(%union.pthread_cond_t* %112) nounwind
  %114 = load %struct.mg_context** %ctx, align 8
  %115 = getelementptr inbounds %struct.mg_context* %114, i32 0, i32 8
  %116 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %115) nounwind
  br label %117

; <label>:117                                     ; preds = %122, %107
  %118 = load %struct.mg_context** %ctx, align 8
  %119 = getelementptr inbounds %struct.mg_context* %118, i32 0, i32 7
  %120 = load volatile i32* %119, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %128

; <label>:122                                     ; preds = %117
  %123 = load %struct.mg_context** %ctx, align 8
  %124 = getelementptr inbounds %struct.mg_context* %123, i32 0, i32 9
  %125 = load %struct.mg_context** %ctx, align 8
  %126 = getelementptr inbounds %struct.mg_context* %125, i32 0, i32 8
  %127 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %124, %union.pthread_mutex_t* %126)
  br label %117

; <label>:128                                     ; preds = %117
  %129 = load %struct.mg_context** %ctx, align 8
  %130 = getelementptr inbounds %struct.mg_context* %129, i32 0, i32 8
  %131 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %130) nounwind
  %132 = load %struct.mg_context** %ctx, align 8
  %133 = getelementptr inbounds %struct.mg_context* %132, i32 0, i32 8
  %134 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %133) nounwind
  %135 = load %struct.mg_context** %ctx, align 8
  %136 = getelementptr inbounds %struct.mg_context* %135, i32 0, i32 9
  %137 = call i32 @pthread_cond_destroy(%union.pthread_cond_t* %136) nounwind
  %138 = load %struct.mg_context** %ctx, align 8
  %139 = getelementptr inbounds %struct.mg_context* %138, i32 0, i32 14
  %140 = call i32 @pthread_cond_destroy(%union.pthread_cond_t* %139) nounwind
  %141 = load %struct.mg_context** %ctx, align 8
  %142 = getelementptr inbounds %struct.mg_context* %141, i32 0, i32 13
  %143 = call i32 @pthread_cond_destroy(%union.pthread_cond_t* %142) nounwind
  %144 = load %struct.mg_context** %ctx, align 8
  call void @uninitialize_ssl(%struct.mg_context* %144)
  %145 = load %struct.mg_context** %ctx, align 8
  %146 = getelementptr inbounds %struct.mg_context* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.mg_callbacks* %146, i32 0, i32 11
  %148 = load void (i8*, i8**)** %147, align 8
  %149 = icmp ne void (i8*, i8**)* %148, null
  br i1 %149, label %150, label %158

; <label>:150                                     ; preds = %128
  %151 = load %struct.mg_context** %ctx, align 8
  %152 = getelementptr inbounds %struct.mg_context* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.mg_callbacks* %152, i32 0, i32 11
  %154 = load void (i8*, i8**)** %153, align 8
  %155 = load %struct.mg_context** %ctx, align 8
  %156 = getelementptr inbounds %struct.mg_context* %155, i32 0, i32 4
  %157 = bitcast i8** %156 to i8*
  call void %154(i8* %157, i8** null)
  br label %158

; <label>:158                                     ; preds = %150, %128
  %159 = load %struct.mg_context** %ctx, align 8
  %160 = getelementptr inbounds %struct.mg_context* %159, i32 0, i32 0
  store volatile i32 2, i32* %160, align 4
  ret i8* null
}

declare i32 @atoi(i8*) nounwind readonly

define internal i8* @worker_thread(i8* %thread_func_param) nounwind uwtable {
  %1 = alloca i8*, align 8
  %ctx = alloca %struct.mg_context*, align 8
  %conn = alloca %struct.mg_connection*, align 8
  store i8* %thread_func_param, i8** %1, align 8
  %2 = load i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.mg_context*
  store %struct.mg_context* %3, %struct.mg_context** %ctx, align 8
  %4 = call noalias i8* @calloc(i64 1, i64 17640) nounwind
  %5 = bitcast i8* %4 to %struct.mg_connection*
  store %struct.mg_connection* %5, %struct.mg_connection** %conn, align 8
  %6 = load %struct.mg_connection** %conn, align 8
  %7 = icmp eq %struct.mg_connection* %6, null
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %0
  %9 = load %struct.mg_context** %ctx, align 8
  %10 = call %struct.mg_connection* @fc(%struct.mg_context* %9)
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %10, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8]* @.str35, i32 0, i32 0))
  br label %142

; <label>:11                                      ; preds = %0
  %12 = load %struct.mg_connection** %conn, align 8
  %13 = getelementptr inbounds %struct.mg_connection* %12, i32 0, i32 12
  store i32 16384, i32* %13, align 4
  %14 = load %struct.mg_connection** %conn, align 8
  %15 = getelementptr inbounds %struct.mg_connection* %14, i64 1
  %16 = bitcast %struct.mg_connection* %15 to i8*
  %17 = load %struct.mg_connection** %conn, align 8
  %18 = getelementptr inbounds %struct.mg_connection* %17, i32 0, i32 9
  store i8* %16, i8** %18, align 8
  %19 = load %struct.mg_context** %ctx, align 8
  %20 = load %struct.mg_connection** %conn, align 8
  %21 = getelementptr inbounds %struct.mg_connection* %20, i32 0, i32 1
  store %struct.mg_context* %19, %struct.mg_context** %21, align 8
  %22 = load %struct.mg_context** %ctx, align 8
  %23 = getelementptr inbounds %struct.mg_context* %22, i32 0, i32 4
  %24 = load i8** %23, align 8
  %25 = load %struct.mg_connection** %conn, align 8
  %26 = getelementptr inbounds %struct.mg_connection* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.mg_request_info* %26, i32 0, i32 8
  store i8* %24, i8** %27, align 8
  %28 = load %struct.mg_context** %ctx, align 8
  %29 = getelementptr inbounds %struct.mg_context* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.mg_callbacks* %29, i32 0, i32 10
  %31 = load void (i8*, i8**)** %30, align 8
  %32 = icmp ne void (i8*, i8**)* %31, null
  br i1 %32, label %33, label %45

; <label>:33                                      ; preds = %11
  %34 = load %struct.mg_context** %ctx, align 8
  %35 = getelementptr inbounds %struct.mg_context* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.mg_callbacks* %35, i32 0, i32 10
  %37 = load void (i8*, i8**)** %36, align 8
  %38 = load %struct.mg_connection** %conn, align 8
  %39 = getelementptr inbounds %struct.mg_connection* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.mg_request_info* %39, i32 0, i32 8
  %41 = bitcast i8** %40 to i8*
  %42 = load %struct.mg_connection** %conn, align 8
  %43 = getelementptr inbounds %struct.mg_connection* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.mg_request_info* %43, i32 0, i32 9
  call void %37(i8* %41, i8** %44)
  br label %45

; <label>:45                                      ; preds = %33, %11
  br label %46

; <label>:46                                      ; preds = %119, %45
  %47 = load %struct.mg_context** %ctx, align 8
  %48 = load %struct.mg_connection** %conn, align 8
  %49 = getelementptr inbounds %struct.mg_connection* %48, i32 0, i32 4
  %50 = call i32 @consume_socket(%struct.mg_context* %47, %struct.socket* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %121

; <label>:52                                      ; preds = %46
  %53 = call i64 @time(i64* null) nounwind
  %54 = load %struct.mg_connection** %conn, align 8
  %55 = getelementptr inbounds %struct.mg_connection* %54, i32 0, i32 5
  store i64 %53, i64* %55, align 8
  %56 = load %struct.mg_connection** %conn, align 8
  %57 = getelementptr inbounds %struct.mg_connection* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.socket* %57, i32 0, i32 2
  %59 = bitcast %union.usa* %58 to %struct.sockaddr_in*
  %60 = getelementptr inbounds %struct.sockaddr_in* %59, i32 0, i32 1
  %61 = load i16* %60, align 2
  %62 = call zeroext i16 @ntohs(i16 zeroext %61) nounwind readnone
  %63 = zext i16 %62 to i32
  %64 = load %struct.mg_connection** %conn, align 8
  %65 = getelementptr inbounds %struct.mg_connection* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.mg_request_info* %65, i32 0, i32 6
  store i32 %63, i32* %66, align 4
  %67 = load %struct.mg_connection** %conn, align 8
  %68 = getelementptr inbounds %struct.mg_connection* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.mg_request_info* %68, i32 0, i32 5
  %70 = bitcast i64* %69 to i8*
  %71 = load %struct.mg_connection** %conn, align 8
  %72 = getelementptr inbounds %struct.mg_connection* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.socket* %72, i32 0, i32 2
  %74 = bitcast %union.usa* %73 to %struct.sockaddr_in*
  %75 = getelementptr inbounds %struct.sockaddr_in* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.in_addr* %75, i32 0, i32 0
  %77 = bitcast i32* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %77, i64 4, i32 1, i1 false)
  %78 = load %struct.mg_connection** %conn, align 8
  %79 = getelementptr inbounds %struct.mg_connection* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.mg_request_info* %79, i32 0, i32 5
  %81 = load i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @ntohl(i32 %82) nounwind readnone
  %84 = zext i32 %83 to i64
  %85 = load %struct.mg_connection** %conn, align 8
  %86 = getelementptr inbounds %struct.mg_connection* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.mg_request_info* %86, i32 0, i32 5
  store i64 %84, i64* %87, align 8
  %88 = load %struct.mg_connection** %conn, align 8
  %89 = getelementptr inbounds %struct.mg_connection* %88, i32 0, i32 4
  %90 = bitcast %struct.socket* %89 to i8*
  %91 = getelementptr i8* %90, i32 36
  %92 = bitcast i8* %91 to i32*
  %93 = load i32* %92, align 4
  %94 = and i32 %93, 1
  %95 = load %struct.mg_connection** %conn, align 8
  %96 = getelementptr inbounds %struct.mg_connection* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.mg_request_info* %96, i32 0, i32 7
  store i32 %94, i32* %97, align 4
  %98 = load %struct.mg_connection** %conn, align 8
  %99 = getelementptr inbounds %struct.mg_connection* %98, i32 0, i32 4
  %100 = bitcast %struct.socket* %99 to i8*
  %101 = getelementptr i8* %100, i32 36
  %102 = bitcast i8* %101 to i32*
  %103 = load i32* %102, align 4
  %104 = and i32 %103, 1
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

; <label>:106                                     ; preds = %52
  %107 = load %struct.mg_connection** %conn, align 8
  %108 = load %struct.mg_connection** %conn, align 8
  %109 = getelementptr inbounds %struct.mg_connection* %108, i32 0, i32 1
  %110 = load %struct.mg_context** %109, align 8
  %111 = getelementptr inbounds %struct.mg_context* %110, i32 0, i32 1
  %112 = load %struct.ssl_ctx_st** %111, align 8
  %113 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 1, i32 1), align 8
  %114 = bitcast void ()* %113 to i32 (%struct.ssl_st*)*
  %115 = call i32 @sslize(%struct.mg_connection* %107, %struct.ssl_ctx_st* %112, i32 (%struct.ssl_st*)* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

; <label>:117                                     ; preds = %106, %52
  %118 = load %struct.mg_connection** %conn, align 8
  call void @process_new_connection(%struct.mg_connection* %118)
  br label %119

; <label>:119                                     ; preds = %117, %106
  %120 = load %struct.mg_connection** %conn, align 8
  call void @close_connection(%struct.mg_connection* %120)
  br label %46

; <label>:121                                     ; preds = %46
  %122 = load %struct.mg_context** %ctx, align 8
  %123 = getelementptr inbounds %struct.mg_context* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.mg_callbacks* %123, i32 0, i32 11
  %125 = load void (i8*, i8**)** %124, align 8
  %126 = icmp ne void (i8*, i8**)* %125, null
  br i1 %126, label %127, label %139

; <label>:127                                     ; preds = %121
  %128 = load %struct.mg_context** %ctx, align 8
  %129 = getelementptr inbounds %struct.mg_context* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.mg_callbacks* %129, i32 0, i32 11
  %131 = load void (i8*, i8**)** %130, align 8
  %132 = load %struct.mg_connection** %conn, align 8
  %133 = getelementptr inbounds %struct.mg_connection* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.mg_request_info* %133, i32 0, i32 8
  %135 = bitcast i8** %134 to i8*
  %136 = load %struct.mg_connection** %conn, align 8
  %137 = getelementptr inbounds %struct.mg_connection* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.mg_request_info* %137, i32 0, i32 9
  call void %131(i8* %135, i8** %138)
  br label %139

; <label>:139                                     ; preds = %127, %121
  %140 = load %struct.mg_connection** %conn, align 8
  %141 = bitcast %struct.mg_connection* %140 to i8*
  call void @free(i8* %141) nounwind
  br label %142

; <label>:142                                     ; preds = %139, %8
  %143 = load %struct.mg_context** %ctx, align 8
  %144 = getelementptr inbounds %struct.mg_context* %143, i32 0, i32 8
  %145 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %144) nounwind
  %146 = load %struct.mg_context** %ctx, align 8
  %147 = getelementptr inbounds %struct.mg_context* %146, i32 0, i32 7
  %148 = load volatile i32* %147, align 4
  %149 = add nsw i32 %148, -1
  store volatile i32 %149, i32* %147, align 4
  %150 = load %struct.mg_context** %ctx, align 8
  %151 = getelementptr inbounds %struct.mg_context* %150, i32 0, i32 9
  %152 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %151) nounwind
  %153 = load %struct.mg_context** %ctx, align 8
  %154 = getelementptr inbounds %struct.mg_context* %153, i32 0, i32 7
  %155 = load volatile i32* %154, align 4
  %156 = icmp sge i32 %155, 0
  br i1 %156, label %157, label %158

; <label>:157                                     ; preds = %142
  br label %160

; <label>:158                                     ; preds = %142
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str4, i32 0, i32 0), i32 5202, i8* getelementptr inbounds ([28 x i8]* @__PRETTY_FUNCTION__.worker_thread, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %160

; <label>:160                                     ; preds = %159, %157
  %161 = load %struct.mg_context** %ctx, align 8
  %162 = getelementptr inbounds %struct.mg_context* %161, i32 0, i32 8
  %163 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %162) nounwind
  ret i8* null
}

define internal i32 @consume_socket(%struct.mg_context* %ctx, %struct.socket* %sp) nounwind uwtable {
  %1 = alloca %struct.mg_context*, align 8
  %2 = alloca %struct.socket*, align 8
  store %struct.mg_context* %ctx, %struct.mg_context** %1, align 8
  store %struct.socket* %sp, %struct.socket** %2, align 8
  %3 = load %struct.mg_context** %1, align 8
  %4 = getelementptr inbounds %struct.mg_context* %3, i32 0, i32 8
  %5 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %4) nounwind
  br label %6

; <label>:6                                       ; preds = %21, %0
  %7 = load %struct.mg_context** %1, align 8
  %8 = getelementptr inbounds %struct.mg_context* %7, i32 0, i32 11
  %9 = load volatile i32* %8, align 4
  %10 = load %struct.mg_context** %1, align 8
  %11 = getelementptr inbounds %struct.mg_context* %10, i32 0, i32 12
  %12 = load volatile i32* %11, align 4
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %19

; <label>:14                                      ; preds = %6
  %15 = load %struct.mg_context** %1, align 8
  %16 = getelementptr inbounds %struct.mg_context* %15, i32 0, i32 0
  %17 = load volatile i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br label %19

; <label>:19                                      ; preds = %14, %6
  %20 = phi i1 [ false, %6 ], [ %18, %14 ]
  br i1 %20, label %21, label %27

; <label>:21                                      ; preds = %19
  %22 = load %struct.mg_context** %1, align 8
  %23 = getelementptr inbounds %struct.mg_context* %22, i32 0, i32 13
  %24 = load %struct.mg_context** %1, align 8
  %25 = getelementptr inbounds %struct.mg_context* %24, i32 0, i32 8
  %26 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %23, %union.pthread_mutex_t* %25)
  br label %6

; <label>:27                                      ; preds = %19
  %28 = load %struct.mg_context** %1, align 8
  %29 = getelementptr inbounds %struct.mg_context* %28, i32 0, i32 11
  %30 = load volatile i32* %29, align 4
  %31 = load %struct.mg_context** %1, align 8
  %32 = getelementptr inbounds %struct.mg_context* %31, i32 0, i32 12
  %33 = load volatile i32* %32, align 4
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %70

; <label>:35                                      ; preds = %27
  %36 = load %struct.socket** %2, align 8
  %37 = load %struct.mg_context** %1, align 8
  %38 = getelementptr inbounds %struct.mg_context* %37, i32 0, i32 12
  %39 = load volatile i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = urem i64 %40, 20
  %42 = load %struct.mg_context** %1, align 8
  %43 = getelementptr inbounds %struct.mg_context* %42, i32 0, i32 10
  %44 = getelementptr inbounds [20 x %struct.socket]* %43, i32 0, i64 %41
  %45 = bitcast %struct.socket* %36 to i8*
  %46 = bitcast %struct.socket* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 40, i32 4, i1 false)
  %47 = load %struct.mg_context** %1, align 8
  %48 = getelementptr inbounds %struct.mg_context* %47, i32 0, i32 12
  %49 = load volatile i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store volatile i32 %50, i32* %48, align 4
  br label %51

; <label>:51                                      ; preds = %56, %35
  %52 = load %struct.mg_context** %1, align 8
  %53 = getelementptr inbounds %struct.mg_context* %52, i32 0, i32 12
  %54 = load volatile i32* %53, align 4
  %55 = icmp sgt i32 %54, 20
  br i1 %55, label %56, label %69

; <label>:56                                      ; preds = %51
  %57 = load %struct.mg_context** %1, align 8
  %58 = getelementptr inbounds %struct.mg_context* %57, i32 0, i32 12
  %59 = load volatile i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = sub i64 %60, 20
  %62 = trunc i64 %61 to i32
  store volatile i32 %62, i32* %58, align 4
  %63 = load %struct.mg_context** %1, align 8
  %64 = getelementptr inbounds %struct.mg_context* %63, i32 0, i32 11
  %65 = load volatile i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = sub i64 %66, 20
  %68 = trunc i64 %67 to i32
  store volatile i32 %68, i32* %64, align 4
  br label %51

; <label>:69                                      ; preds = %51
  br label %70

; <label>:70                                      ; preds = %69, %27
  %71 = load %struct.mg_context** %1, align 8
  %72 = getelementptr inbounds %struct.mg_context* %71, i32 0, i32 14
  %73 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %72) nounwind
  %74 = load %struct.mg_context** %1, align 8
  %75 = getelementptr inbounds %struct.mg_context* %74, i32 0, i32 8
  %76 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %75) nounwind
  %77 = load %struct.mg_context** %1, align 8
  %78 = getelementptr inbounds %struct.mg_context* %77, i32 0, i32 0
  %79 = load volatile i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  ret i32 %82
}

declare zeroext i16 @ntohs(i16 zeroext) nounwind readnone

declare i32 @ntohl(i32) nounwind readnone

define internal void @process_new_connection(%struct.mg_connection* %conn) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %ri = alloca %struct.mg_request_info*, align 8
  %keep_alive_enabled = alloca i32, align 4
  %keep_alive = alloca i32, align 4
  %discard_len = alloca i32, align 4
  %ebuf = alloca [100 x i8], align 16
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  %2 = load %struct.mg_connection** %1, align 8
  %3 = getelementptr inbounds %struct.mg_connection* %2, i32 0, i32 0
  store %struct.mg_request_info* %3, %struct.mg_request_info** %ri, align 8
  %4 = load %struct.mg_connection** %1, align 8
  %5 = getelementptr inbounds %struct.mg_connection* %4, i32 0, i32 1
  %6 = load %struct.mg_context** %5, align 8
  %7 = getelementptr inbounds %struct.mg_context* %6, i32 0, i32 2
  %8 = getelementptr inbounds [24 x i8*]* %7, i32 0, i64 13
  %9 = load i8** %8, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([4 x i8]* @.str37, i32 0, i32 0)) nounwind readonly
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %keep_alive_enabled, align 4
  store i32 0, i32* %keep_alive, align 4
  %14 = load %struct.mg_connection** %1, align 8
  %15 = getelementptr inbounds %struct.mg_connection* %14, i32 0, i32 14
  store i32 0, i32* %15, align 4
  br label %16

; <label>:16                                      ; preds = %207, %0
  %17 = load %struct.mg_connection** %1, align 8
  %18 = getelementptr inbounds [100 x i8]* %ebuf, i32 0, i32 0
  %19 = call i32 @getreq(%struct.mg_connection* %17, i8* %18, i64 100)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

; <label>:21                                      ; preds = %16
  %22 = load %struct.mg_connection** %1, align 8
  %23 = getelementptr inbounds [100 x i8]* %ebuf, i32 0, i32 0
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %22, i32 500, i8* getelementptr inbounds ([13 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* %23)
  %24 = load %struct.mg_connection** %1, align 8
  %25 = getelementptr inbounds %struct.mg_connection* %24, i32 0, i32 11
  store i32 1, i32* %25, align 4
  br label %63

; <label>:26                                      ; preds = %16
  %27 = load %struct.mg_connection** %1, align 8
  %28 = getelementptr inbounds %struct.mg_connection* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.mg_request_info* %28, i32 0, i32 1
  %30 = load i8** %29, align 8
  %31 = call i32 @is_valid_uri(i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

; <label>:33                                      ; preds = %26
  %34 = getelementptr inbounds [100 x i8]* %ebuf, i32 0, i32 0
  %35 = load %struct.mg_request_info** %ri, align 8
  %36 = getelementptr inbounds %struct.mg_request_info* %35, i32 0, i32 1
  %37 = load i8** %36, align 8
  %38 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %34, i64 100, i8* getelementptr inbounds ([18 x i8]* @.str39, i32 0, i32 0), i8* %37) nounwind
  %39 = load %struct.mg_connection** %1, align 8
  %40 = getelementptr inbounds [100 x i8]* %ebuf, i32 0, i32 0
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %39, i32 400, i8* getelementptr inbounds ([12 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* %40)
  br label %62

; <label>:41                                      ; preds = %26
  %42 = load %struct.mg_request_info** %ri, align 8
  %43 = getelementptr inbounds %struct.mg_request_info* %42, i32 0, i32 2
  %44 = load i8** %43, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([4 x i8]* @.str41, i32 0, i32 0)) nounwind readonly
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

; <label>:47                                      ; preds = %41
  %48 = load %struct.mg_request_info** %ri, align 8
  %49 = getelementptr inbounds %struct.mg_request_info* %48, i32 0, i32 2
  %50 = load i8** %49, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([4 x i8]* @.str42, i32 0, i32 0)) nounwind readonly
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

; <label>:53                                      ; preds = %47
  %54 = getelementptr inbounds [100 x i8]* %ebuf, i32 0, i32 0
  %55 = load %struct.mg_request_info** %ri, align 8
  %56 = getelementptr inbounds %struct.mg_request_info* %55, i32 0, i32 2
  %57 = load i8** %56, align 8
  %58 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %54, i64 100, i8* getelementptr inbounds ([23 x i8]* @.str43, i32 0, i32 0), i8* %57) nounwind
  %59 = load %struct.mg_connection** %1, align 8
  %60 = getelementptr inbounds [100 x i8]* %ebuf, i32 0, i32 0
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %59, i32 505, i8* getelementptr inbounds ([17 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* %60)
  br label %61

; <label>:61                                      ; preds = %53, %47, %41
  br label %62

; <label>:62                                      ; preds = %61, %33
  br label %63

; <label>:63                                      ; preds = %62, %21
  %64 = getelementptr inbounds [100 x i8]* %ebuf, i32 0, i64 0
  %65 = load i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %90

; <label>:68                                      ; preds = %63
  %69 = load %struct.mg_connection** %1, align 8
  call void @handle_request(%struct.mg_connection* %69)
  %70 = load %struct.mg_connection** %1, align 8
  %71 = getelementptr inbounds %struct.mg_connection* %70, i32 0, i32 1
  %72 = load %struct.mg_context** %71, align 8
  %73 = getelementptr inbounds %struct.mg_context* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.mg_callbacks* %73, i32 0, i32 1
  %75 = load void (%struct.mg_connection*, i32)** %74, align 8
  %76 = icmp ne void (%struct.mg_connection*, i32)* %75, null
  br i1 %76, label %77, label %88

; <label>:77                                      ; preds = %68
  %78 = load %struct.mg_connection** %1, align 8
  %79 = getelementptr inbounds %struct.mg_connection* %78, i32 0, i32 1
  %80 = load %struct.mg_context** %79, align 8
  %81 = getelementptr inbounds %struct.mg_context* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.mg_callbacks* %81, i32 0, i32 1
  %83 = load void (%struct.mg_connection*, i32)** %82, align 8
  %84 = load %struct.mg_connection** %1, align 8
  %85 = load %struct.mg_connection** %1, align 8
  %86 = getelementptr inbounds %struct.mg_connection* %85, i32 0, i32 15
  %87 = load i32* %86, align 4
  call void %83(%struct.mg_connection* %84, i32 %87)
  br label %88

; <label>:88                                      ; preds = %77, %68
  %89 = load %struct.mg_connection** %1, align 8
  call void @log_access(%struct.mg_connection* %89)
  br label %90

; <label>:90                                      ; preds = %88, %63
  %91 = load %struct.mg_request_info** %ri, align 8
  %92 = getelementptr inbounds %struct.mg_request_info* %91, i32 0, i32 4
  %93 = load i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %101

; <label>:95                                      ; preds = %90
  %96 = load %struct.mg_request_info** %ri, align 8
  %97 = getelementptr inbounds %struct.mg_request_info* %96, i32 0, i32 4
  %98 = load i8** %97, align 8
  call void @free(i8* %98) nounwind
  %99 = load %struct.mg_request_info** %ri, align 8
  %100 = getelementptr inbounds %struct.mg_request_info* %99, i32 0, i32 4
  store i8* null, i8** %100, align 8
  br label %101

; <label>:101                                     ; preds = %95, %90
  %102 = load %struct.mg_connection** %1, align 8
  %103 = getelementptr inbounds %struct.mg_connection* %102, i32 0, i32 1
  %104 = load %struct.mg_context** %103, align 8
  %105 = getelementptr inbounds %struct.mg_context* %104, i32 0, i32 0
  %106 = load volatile i32* %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %120

; <label>:108                                     ; preds = %101
  %109 = load i32* %keep_alive_enabled, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

; <label>:111                                     ; preds = %108
  %112 = load %struct.mg_connection** %1, align 8
  %113 = getelementptr inbounds %struct.mg_connection* %112, i32 0, i32 7
  %114 = load i64* %113, align 8
  %115 = icmp sge i64 %114, 0
  br i1 %115, label %116, label %120

; <label>:116                                     ; preds = %111
  %117 = load %struct.mg_connection** %1, align 8
  %118 = call i32 @should_keep_alive(%struct.mg_connection* %117)
  %119 = icmp ne i32 %118, 0
  br label %120

; <label>:120                                     ; preds = %116, %111, %108, %101
  %121 = phi i1 [ false, %111 ], [ false, %108 ], [ false, %101 ], [ %119, %116 ]
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %keep_alive, align 4
  %123 = load %struct.mg_connection** %1, align 8
  %124 = getelementptr inbounds %struct.mg_connection* %123, i32 0, i32 7
  %125 = load i64* %124, align 8
  %126 = icmp sge i64 %125, 0
  br i1 %126, label %127, label %156

; <label>:127                                     ; preds = %120
  %128 = load %struct.mg_connection** %1, align 8
  %129 = getelementptr inbounds %struct.mg_connection* %128, i32 0, i32 13
  %130 = load i32* %129, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %156

; <label>:132                                     ; preds = %127
  %133 = load %struct.mg_connection** %1, align 8
  %134 = getelementptr inbounds %struct.mg_connection* %133, i32 0, i32 13
  %135 = load i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = load %struct.mg_connection** %1, align 8
  %138 = getelementptr inbounds %struct.mg_connection* %137, i32 0, i32 7
  %139 = load i64* %138, align 8
  %140 = add nsw i64 %136, %139
  %141 = load %struct.mg_connection** %1, align 8
  %142 = getelementptr inbounds %struct.mg_connection* %141, i32 0, i32 14
  %143 = load i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = icmp slt i64 %140, %144
  br i1 %145, label %146, label %156

; <label>:146                                     ; preds = %132
  %147 = load %struct.mg_connection** %1, align 8
  %148 = getelementptr inbounds %struct.mg_connection* %147, i32 0, i32 13
  %149 = load i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = load %struct.mg_connection** %1, align 8
  %152 = getelementptr inbounds %struct.mg_connection* %151, i32 0, i32 7
  %153 = load i64* %152, align 8
  %154 = add nsw i64 %150, %153
  %155 = trunc i64 %154 to i32
  br label %160

; <label>:156                                     ; preds = %132, %127, %120
  %157 = load %struct.mg_connection** %1, align 8
  %158 = getelementptr inbounds %struct.mg_connection* %157, i32 0, i32 14
  %159 = load i32* %158, align 4
  br label %160

; <label>:160                                     ; preds = %156, %146
  %161 = phi i32 [ %155, %146 ], [ %159, %156 ]
  store i32 %161, i32* %discard_len, align 4
  %162 = load i32* %discard_len, align 4
  %163 = icmp sge i32 %162, 0
  br i1 %163, label %164, label %165

; <label>:164                                     ; preds = %160
  br label %167

; <label>:165                                     ; preds = %160
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8]* @.str45, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str4, i32 0, i32 0), i32 5110, i8* getelementptr inbounds ([52 x i8]* @__PRETTY_FUNCTION__.process_new_connection, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %167

; <label>:167                                     ; preds = %166, %164
  %168 = load %struct.mg_connection** %1, align 8
  %169 = getelementptr inbounds %struct.mg_connection* %168, i32 0, i32 9
  %170 = load i8** %169, align 8
  %171 = load %struct.mg_connection** %1, align 8
  %172 = getelementptr inbounds %struct.mg_connection* %171, i32 0, i32 9
  %173 = load i8** %172, align 8
  %174 = load i32* %discard_len, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8* %173, i64 %175
  %177 = load %struct.mg_connection** %1, align 8
  %178 = getelementptr inbounds %struct.mg_connection* %177, i32 0, i32 14
  %179 = load i32* %178, align 4
  %180 = load i32* %discard_len, align 4
  %181 = sub nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %170, i8* %176, i64 %182, i32 1, i1 false)
  %183 = load i32* %discard_len, align 4
  %184 = load %struct.mg_connection** %1, align 8
  %185 = getelementptr inbounds %struct.mg_connection* %184, i32 0, i32 14
  %186 = load i32* %185, align 4
  %187 = sub nsw i32 %186, %183
  store i32 %187, i32* %185, align 4
  %188 = load %struct.mg_connection** %1, align 8
  %189 = getelementptr inbounds %struct.mg_connection* %188, i32 0, i32 14
  %190 = load i32* %189, align 4
  %191 = icmp sge i32 %190, 0
  br i1 %191, label %192, label %193

; <label>:192                                     ; preds = %167
  br label %195

; <label>:193                                     ; preds = %167
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8]* @.str46, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str4, i32 0, i32 0), i32 5113, i8* getelementptr inbounds ([52 x i8]* @__PRETTY_FUNCTION__.process_new_connection, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %195

; <label>:195                                     ; preds = %194, %192
  %196 = load %struct.mg_connection** %1, align 8
  %197 = getelementptr inbounds %struct.mg_connection* %196, i32 0, i32 14
  %198 = load i32* %197, align 4
  %199 = load %struct.mg_connection** %1, align 8
  %200 = getelementptr inbounds %struct.mg_connection* %199, i32 0, i32 12
  %201 = load i32* %200, align 4
  %202 = icmp sle i32 %198, %201
  br i1 %202, label %203, label %204

; <label>:203                                     ; preds = %195
  br label %206

; <label>:204                                     ; preds = %195
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8]* @.str47, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str4, i32 0, i32 0), i32 5114, i8* getelementptr inbounds ([52 x i8]* @__PRETTY_FUNCTION__.process_new_connection, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %206

; <label>:206                                     ; preds = %205, %203
  br label %207

; <label>:207                                     ; preds = %206
  %208 = load i32* %keep_alive, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %16, label %210

; <label>:210                                     ; preds = %207
  ret void
}

declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) nounwind

declare i32 @pthread_cond_signal(%union.pthread_cond_t*) nounwind

declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) nounwind

define internal i32 @is_valid_uri(i8* %uri) nounwind uwtable {
  %1 = alloca i8*, align 8
  store i8* %uri, i8** %1, align 8
  %2 = load i8** %1, align 8
  %3 = getelementptr inbounds i8* %2, i64 0
  %4 = load i8* %3
  %5 = sext i8 %4 to i32
  %6 = icmp eq i32 %5, 47
  br i1 %6, label %21, label %7

; <label>:7                                       ; preds = %0
  %8 = load i8** %1, align 8
  %9 = getelementptr inbounds i8* %8, i64 0
  %10 = load i8* %9
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 42
  br i1 %12, label %13, label %19

; <label>:13                                      ; preds = %7
  %14 = load i8** %1, align 8
  %15 = getelementptr inbounds i8* %14, i64 1
  %16 = load i8* %15
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br label %19

; <label>:19                                      ; preds = %13, %7
  %20 = phi i1 [ false, %7 ], [ %18, %13 ]
  br label %21

; <label>:21                                      ; preds = %19, %0
  %22 = phi i1 [ true, %0 ], [ %20, %19 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

define internal void @handle_request(%struct.mg_connection* %conn) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %ri = alloca %struct.mg_request_info*, align 8
  %path = alloca [4096 x i8], align 16
  %uri_len = alloca i32, align 4
  %ssl_index = alloca i32, align 4
  %file = alloca %struct.file, align 8
  %de = alloca %struct.de, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  %2 = load %struct.mg_connection** %1, align 8
  %3 = getelementptr inbounds %struct.mg_connection* %2, i32 0, i32 0
  store %struct.mg_request_info* %3, %struct.mg_request_info** %ri, align 8
  %4 = bitcast %struct.file* %file to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 48, i32 8, i1 false)
  %5 = bitcast i8* %4 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %6 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %5, i32 0, i32 6
  %7 = load %struct.mg_request_info** %ri, align 8
  %8 = getelementptr inbounds %struct.mg_request_info* %7, i32 0, i32 1
  %9 = load i8** %8, align 8
  %10 = call i8* @strchr(i8* %9, i32 63) nounwind readonly
  %11 = load %struct.mg_connection** %1, align 8
  %12 = getelementptr inbounds %struct.mg_connection* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.mg_request_info* %12, i32 0, i32 3
  store i8* %10, i8** %13, align 8
  %14 = icmp ne i8* %10, null
  br i1 %14, label %15, label %21

; <label>:15                                      ; preds = %0
  %16 = load %struct.mg_connection** %1, align 8
  %17 = getelementptr inbounds %struct.mg_connection* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.mg_request_info* %17, i32 0, i32 3
  %19 = load i8** %18, align 8
  %20 = getelementptr inbounds i8* %19, i32 1
  store i8* %20, i8** %18, align 8
  store i8 0, i8* %19
  br label %21

; <label>:21                                      ; preds = %15, %0
  %22 = load %struct.mg_request_info** %ri, align 8
  %23 = getelementptr inbounds %struct.mg_request_info* %22, i32 0, i32 1
  %24 = load i8** %23, align 8
  %25 = call i64 @strlen(i8* %24) nounwind readonly
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %uri_len, align 4
  %27 = load %struct.mg_request_info** %ri, align 8
  %28 = getelementptr inbounds %struct.mg_request_info* %27, i32 0, i32 1
  %29 = load i8** %28, align 8
  %30 = load i32* %uri_len, align 4
  %31 = load %struct.mg_request_info** %ri, align 8
  %32 = getelementptr inbounds %struct.mg_request_info* %31, i32 0, i32 1
  %33 = load i8** %32, align 8
  %34 = load i32* %uri_len, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 @mg_url_decode(i8* %29, i32 %30, i8* %33, i32 %35, i32 0)
  %37 = load %struct.mg_request_info** %ri, align 8
  %38 = getelementptr inbounds %struct.mg_request_info* %37, i32 0, i32 1
  %39 = load i8** %38, align 8
  call void @remove_double_dots_and_double_slashes(i8* %39)
  %40 = load %struct.mg_connection** %1, align 8
  %41 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  call void @convert_uri_to_file_name(%struct.mg_connection* %40, i8* %41, i64 4096, %struct.file* %file)
  %42 = load %struct.mg_connection** %1, align 8
  %43 = getelementptr inbounds %struct.mg_connection* %42, i32 0, i32 1
  %44 = load %struct.mg_context** %43, align 8
  %45 = getelementptr inbounds %struct.mg_context* %44, i32 0, i32 2
  %46 = getelementptr inbounds [24 x i8*]* %45, i32 0, i64 7
  %47 = load i8** %46, align 8
  %48 = load %struct.mg_connection** %1, align 8
  %49 = call i32 @get_remote_ip(%struct.mg_connection* %48)
  %50 = load %struct.mg_request_info** %ri, align 8
  %51 = getelementptr inbounds %struct.mg_request_info* %50, i32 0, i32 1
  %52 = load i8** %51, align 8
  %53 = call i32 @set_throttle(i8* %47, i32 %49, i8* %52)
  %54 = load %struct.mg_connection** %1, align 8
  %55 = getelementptr inbounds %struct.mg_connection* %54, i32 0, i32 16
  store i32 %53, i32* %55, align 4
  %56 = load %struct.mg_connection** %1, align 8
  %57 = getelementptr inbounds %struct.mg_connection* %56, i32 0, i32 4
  %58 = bitcast %struct.socket* %57 to i8*
  %59 = getelementptr i8* %58, i32 36
  %60 = bitcast i8* %59 to i32*
  %61 = load i32* %60, align 4
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %83, label %64

; <label>:64                                      ; preds = %21
  %65 = load %struct.mg_connection** %1, align 8
  %66 = getelementptr inbounds %struct.mg_connection* %65, i32 0, i32 4
  %67 = bitcast %struct.socket* %66 to i8*
  %68 = getelementptr i8* %67, i32 36
  %69 = bitcast i8* %68 to i32*
  %70 = load i32* %69, align 4
  %71 = lshr i32 %70, 1
  %72 = and i32 %71, 1
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

; <label>:74                                      ; preds = %64
  %75 = load %struct.mg_connection** %1, align 8
  %76 = getelementptr inbounds %struct.mg_connection* %75, i32 0, i32 1
  %77 = load %struct.mg_context** %76, align 8
  %78 = call i32 @get_first_ssl_listener_index(%struct.mg_context* %77)
  store i32 %78, i32* %ssl_index, align 4
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %80, label %83

; <label>:80                                      ; preds = %74
  %81 = load %struct.mg_connection** %1, align 8
  %82 = load i32* %ssl_index, align 4
  call void @redirect_to_https_port(%struct.mg_connection* %81, i32 %82)
  br label %372

; <label>:83                                      ; preds = %74, %64, %21
  %84 = load %struct.mg_connection** %1, align 8
  %85 = call i32 @is_put_or_delete_request(%struct.mg_connection* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %94, label %87

; <label>:87                                      ; preds = %83
  %88 = load %struct.mg_connection** %1, align 8
  %89 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %90 = call i32 @check_authorization(%struct.mg_connection* %88, i8* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

; <label>:92                                      ; preds = %87
  %93 = load %struct.mg_connection** %1, align 8
  call void @send_authorization_request(%struct.mg_connection* %93)
  br label %371

; <label>:94                                      ; preds = %87, %83
  %95 = load %struct.mg_connection** %1, align 8
  %96 = getelementptr inbounds %struct.mg_connection* %95, i32 0, i32 1
  %97 = load %struct.mg_context** %96, align 8
  %98 = getelementptr inbounds %struct.mg_context* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.mg_callbacks* %98, i32 0, i32 0
  %100 = load i32 (%struct.mg_connection*)** %99, align 8
  %101 = icmp ne i32 (%struct.mg_connection*)* %100, null
  br i1 %101, label %102, label %113

; <label>:102                                     ; preds = %94
  %103 = load %struct.mg_connection** %1, align 8
  %104 = getelementptr inbounds %struct.mg_connection* %103, i32 0, i32 1
  %105 = load %struct.mg_context** %104, align 8
  %106 = getelementptr inbounds %struct.mg_context* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.mg_callbacks* %106, i32 0, i32 0
  %108 = load i32 (%struct.mg_connection*)** %107, align 8
  %109 = load %struct.mg_connection** %1, align 8
  %110 = call i32 %108(%struct.mg_connection* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

; <label>:112                                     ; preds = %102
  br label %370

; <label>:113                                     ; preds = %102, %94
  %114 = load %struct.mg_request_info** %ri, align 8
  %115 = getelementptr inbounds %struct.mg_request_info* %114, i32 0, i32 0
  %116 = load i8** %115, align 8
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([8 x i8]* @.str57, i32 0, i32 0)) nounwind readonly
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

; <label>:119                                     ; preds = %113
  %120 = load %struct.mg_connection** %1, align 8
  call void @send_options(%struct.mg_connection* %120)
  br label %369

; <label>:121                                     ; preds = %113
  %122 = load %struct.mg_connection** %1, align 8
  %123 = getelementptr inbounds %struct.mg_connection* %122, i32 0, i32 1
  %124 = load %struct.mg_context** %123, align 8
  %125 = getelementptr inbounds %struct.mg_context* %124, i32 0, i32 2
  %126 = getelementptr inbounds [24 x i8*]* %125, i32 0, i64 17
  %127 = load i8** %126, align 8
  %128 = icmp eq i8* %127, null
  br i1 %128, label %129, label %131

; <label>:129                                     ; preds = %121
  %130 = load %struct.mg_connection** %1, align 8
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %130, i32 404, i8* getelementptr inbounds ([10 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str16, i32 0, i32 0))
  br label %368

; <label>:131                                     ; preds = %121
  %132 = load %struct.mg_connection** %1, align 8
  %133 = call i32 @is_put_or_delete_request(%struct.mg_connection* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

; <label>:135                                     ; preds = %131
  %136 = load %struct.mg_connection** %1, align 8
  %137 = call i32 @is_authorized_for_put(%struct.mg_connection* %136)
  %138 = icmp ne i32 %137, 1
  br i1 %138, label %139, label %141

; <label>:139                                     ; preds = %135
  %140 = load %struct.mg_connection** %1, align 8
  call void @send_authorization_request(%struct.mg_connection* %140)
  br label %367

; <label>:141                                     ; preds = %135, %131
  %142 = load %struct.mg_request_info** %ri, align 8
  %143 = getelementptr inbounds %struct.mg_request_info* %142, i32 0, i32 0
  %144 = load i8** %143, align 8
  %145 = call i32 @strcmp(i8* %144, i8* getelementptr inbounds ([4 x i8]* @.str58, i32 0, i32 0)) nounwind readonly
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

; <label>:147                                     ; preds = %141
  %148 = load %struct.mg_connection** %1, align 8
  %149 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  call void @put_file(%struct.mg_connection* %148, i8* %149)
  br label %366

; <label>:150                                     ; preds = %141
  %151 = load %struct.mg_request_info** %ri, align 8
  %152 = getelementptr inbounds %struct.mg_request_info* %151, i32 0, i32 0
  %153 = load i8** %152, align 8
  %154 = call i32 @strcmp(i8* %153, i8* getelementptr inbounds ([6 x i8]* @.str59, i32 0, i32 0)) nounwind readonly
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

; <label>:156                                     ; preds = %150
  %157 = load %struct.mg_connection** %1, align 8
  %158 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  call void @mkcol(%struct.mg_connection* %157, i8* %158)
  br label %365

; <label>:159                                     ; preds = %150
  %160 = load %struct.mg_request_info** %ri, align 8
  %161 = getelementptr inbounds %struct.mg_request_info* %160, i32 0, i32 0
  %162 = load i8** %161, align 8
  %163 = call i32 @strcmp(i8* %162, i8* getelementptr inbounds ([7 x i8]* @.str60, i32 0, i32 0)) nounwind readonly
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %213, label %165

; <label>:165                                     ; preds = %159
  %166 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %167 = bitcast %struct.file* %166 to i8*
  call void @llvm.memset.p0i8.i64(i8* %167, i8 0, i64 48, i32 1, i1 false)
  %168 = load %struct.mg_connection** %1, align 8
  %169 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %170 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %171 = call i32 @mg_stat(%struct.mg_connection* %168, i8* %169, %struct.file* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %175, label %173

; <label>:173                                     ; preds = %165
  %174 = load %struct.mg_connection** %1, align 8
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %174, i32 404, i8* getelementptr inbounds ([10 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str17, i32 0, i32 0))
  br label %212

; <label>:175                                     ; preds = %165
  %176 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %177 = getelementptr inbounds %struct.file* %176, i32 0, i32 1
  %178 = load i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %204

; <label>:180                                     ; preds = %175
  %181 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %182 = getelementptr inbounds %struct.file* %181, i32 0, i32 0
  %183 = load i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

; <label>:185                                     ; preds = %180
  %186 = load %struct.mg_connection** %1, align 8
  %187 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %188 = call i32 @remove_directory(%struct.mg_connection* %186, i8* %187)
  %189 = load %struct.mg_connection** %1, align 8
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %189, i32 204, i8* getelementptr inbounds ([11 x i8]* @.str61, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0))
  br label %203

; <label>:190                                     ; preds = %180
  %191 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %192 = call i32 @remove(i8* %191) nounwind
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %196

; <label>:194                                     ; preds = %190
  %195 = load %struct.mg_connection** %1, align 8
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %195, i32 204, i8* getelementptr inbounds ([11 x i8]* @.str61, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0))
  br label %202

; <label>:196                                     ; preds = %190
  %197 = load %struct.mg_connection** %1, align 8
  %198 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %199 = call i32* @__errno_location() nounwind readnone
  %200 = load i32* %199
  %201 = call i8* @strerror(i32 %200) nounwind
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %197, i32 423, i8* getelementptr inbounds ([7 x i8]* @.str62, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str63, i32 0, i32 0), i8* %198, i8* %201)
  br label %202

; <label>:202                                     ; preds = %196, %194
  br label %203

; <label>:203                                     ; preds = %202, %185
  br label %211

; <label>:204                                     ; preds = %175
  %205 = load %struct.mg_connection** %1, align 8
  %206 = load i8** @http_500_error, align 8
  %207 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %208 = call i32* @__errno_location() nounwind readnone
  %209 = load i32* %208
  %210 = call i8* @strerror(i32 %209) nounwind
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %205, i32 500, i8* %206, i8* getelementptr inbounds ([15 x i8]* @.str63, i32 0, i32 0), i8* %207, i8* %210)
  br label %211

; <label>:211                                     ; preds = %204, %203
  br label %212

; <label>:212                                     ; preds = %211, %173
  br label %364

; <label>:213                                     ; preds = %159
  %214 = getelementptr inbounds %struct.file* %file, i32 0, i32 4
  %215 = load i8** %214, align 8
  %216 = icmp eq i8* %215, null
  br i1 %216, label %217, label %221

; <label>:217                                     ; preds = %213
  %218 = getelementptr inbounds %struct.file* %file, i32 0, i32 1
  %219 = load i64* %218, align 8
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %226, label %221

; <label>:221                                     ; preds = %217, %213
  %222 = load %struct.mg_connection** %1, align 8
  %223 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %224 = call i32 @must_hide_file(%struct.mg_connection* %222, i8* %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

; <label>:226                                     ; preds = %221, %217
  %227 = load %struct.mg_connection** %1, align 8
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %227, i32 404, i8* getelementptr inbounds ([10 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str17, i32 0, i32 0))
  br label %363

; <label>:228                                     ; preds = %221
  %229 = getelementptr inbounds %struct.file* %file, i32 0, i32 0
  %230 = load i32* %229, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %249

; <label>:232                                     ; preds = %228
  %233 = load i32* %uri_len, align 4
  %234 = sub nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = load %struct.mg_request_info** %ri, align 8
  %237 = getelementptr inbounds %struct.mg_request_info* %236, i32 0, i32 1
  %238 = load i8** %237, align 8
  %239 = getelementptr inbounds i8* %238, i64 %235
  %240 = load i8* %239
  %241 = sext i8 %240 to i32
  %242 = icmp ne i32 %241, 47
  br i1 %242, label %243, label %249

; <label>:243                                     ; preds = %232
  %244 = load %struct.mg_connection** %1, align 8
  %245 = load %struct.mg_request_info** %ri, align 8
  %246 = getelementptr inbounds %struct.mg_request_info* %245, i32 0, i32 1
  %247 = load i8** %246, align 8
  %248 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %244, i8* getelementptr inbounds ([50 x i8]* @.str64, i32 0, i32 0), i8* %247)
  br label %362

; <label>:249                                     ; preds = %232, %228
  %250 = load %struct.mg_request_info** %ri, align 8
  %251 = getelementptr inbounds %struct.mg_request_info* %250, i32 0, i32 0
  %252 = load i8** %251, align 8
  %253 = call i32 @strcmp(i8* %252, i8* getelementptr inbounds ([9 x i8]* @.str65, i32 0, i32 0)) nounwind readonly
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %258, label %255

; <label>:255                                     ; preds = %249
  %256 = load %struct.mg_connection** %1, align 8
  %257 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  call void @handle_propfind(%struct.mg_connection* %256, i8* %257, %struct.file* %file)
  br label %361

; <label>:258                                     ; preds = %249
  %259 = getelementptr inbounds %struct.file* %file, i32 0, i32 0
  %260 = load i32* %259, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %282

; <label>:262                                     ; preds = %258
  %263 = load %struct.mg_connection** %1, align 8
  %264 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %265 = call i32 @substitute_index_file(%struct.mg_connection* %263, i8* %264, i64 4096, %struct.file* %file)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %282, label %267

; <label>:267                                     ; preds = %262
  %268 = load %struct.mg_connection** %1, align 8
  %269 = getelementptr inbounds %struct.mg_connection* %268, i32 0, i32 1
  %270 = load %struct.mg_context** %269, align 8
  %271 = getelementptr inbounds %struct.mg_context* %270, i32 0, i32 2
  %272 = getelementptr inbounds [24 x i8*]* %271, i32 0, i64 9
  %273 = load i8** %272, align 8
  %274 = call i32 @mg_strcasecmp(i8* %273, i8* getelementptr inbounds ([4 x i8]* @.str37, i32 0, i32 0))
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %279, label %276

; <label>:276                                     ; preds = %267
  %277 = load %struct.mg_connection** %1, align 8
  %278 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  call void @handle_directory_request(%struct.mg_connection* %277, i8* %278)
  br label %281

; <label>:279                                     ; preds = %267
  %280 = load %struct.mg_connection** %1, align 8
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %280, i32 403, i8* getelementptr inbounds ([25 x i8]* @.str66, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str67, i32 0, i32 0))
  br label %281

; <label>:281                                     ; preds = %279, %276
  br label %360

; <label>:282                                     ; preds = %262, %258
  %283 = load %struct.mg_connection** %1, align 8
  %284 = getelementptr inbounds %struct.mg_connection* %283, i32 0, i32 1
  %285 = load %struct.mg_context** %284, align 8
  %286 = getelementptr inbounds %struct.mg_context* %285, i32 0, i32 2
  %287 = getelementptr inbounds [24 x i8*]* %286, i32 0, i64 0
  %288 = load i8** %287, align 8
  %289 = load %struct.mg_connection** %1, align 8
  %290 = getelementptr inbounds %struct.mg_connection* %289, i32 0, i32 1
  %291 = load %struct.mg_context** %290, align 8
  %292 = getelementptr inbounds %struct.mg_context* %291, i32 0, i32 2
  %293 = getelementptr inbounds [24 x i8*]* %292, i32 0, i64 0
  %294 = load i8** %293, align 8
  %295 = call i64 @strlen(i8* %294) nounwind readonly
  %296 = trunc i64 %295 to i32
  %297 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %298 = call i32 @match_prefix(i8* %288, i32 %296, i8* %297)
  %299 = icmp sgt i32 %298, 0
  br i1 %299, label %300, label %327

; <label>:300                                     ; preds = %282
  %301 = load %struct.mg_request_info** %ri, align 8
  %302 = getelementptr inbounds %struct.mg_request_info* %301, i32 0, i32 0
  %303 = load i8** %302, align 8
  %304 = call i32 @strcmp(i8* %303, i8* getelementptr inbounds ([5 x i8]* @.str68, i32 0, i32 0)) nounwind readonly
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %323

; <label>:306                                     ; preds = %300
  %307 = load %struct.mg_request_info** %ri, align 8
  %308 = getelementptr inbounds %struct.mg_request_info* %307, i32 0, i32 0
  %309 = load i8** %308, align 8
  %310 = call i32 @strcmp(i8* %309, i8* getelementptr inbounds ([5 x i8]* @.str69, i32 0, i32 0)) nounwind readonly
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %323

; <label>:312                                     ; preds = %306
  %313 = load %struct.mg_request_info** %ri, align 8
  %314 = getelementptr inbounds %struct.mg_request_info* %313, i32 0, i32 0
  %315 = load i8** %314, align 8
  %316 = call i32 @strcmp(i8* %315, i8* getelementptr inbounds ([4 x i8]* @.str70, i32 0, i32 0)) nounwind readonly
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %323

; <label>:318                                     ; preds = %312
  %319 = load %struct.mg_connection** %1, align 8
  %320 = load %struct.mg_request_info** %ri, align 8
  %321 = getelementptr inbounds %struct.mg_request_info* %320, i32 0, i32 0
  %322 = load i8** %321, align 8
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %319, i32 501, i8* getelementptr inbounds ([16 x i8]* @.str71, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8]* @.str72, i32 0, i32 0), i8* %322)
  br label %326

; <label>:323                                     ; preds = %312, %306, %300
  %324 = load %struct.mg_connection** %1, align 8
  %325 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  call void @handle_cgi_request(%struct.mg_connection* %324, i8* %325)
  br label %326

; <label>:326                                     ; preds = %323, %318
  br label %359

; <label>:327                                     ; preds = %282
  %328 = load %struct.mg_connection** %1, align 8
  %329 = getelementptr inbounds %struct.mg_connection* %328, i32 0, i32 1
  %330 = load %struct.mg_context** %329, align 8
  %331 = getelementptr inbounds %struct.mg_context* %330, i32 0, i32 2
  %332 = getelementptr inbounds [24 x i8*]* %331, i32 0, i64 6
  %333 = load i8** %332, align 8
  %334 = load %struct.mg_connection** %1, align 8
  %335 = getelementptr inbounds %struct.mg_connection* %334, i32 0, i32 1
  %336 = load %struct.mg_context** %335, align 8
  %337 = getelementptr inbounds %struct.mg_context* %336, i32 0, i32 2
  %338 = getelementptr inbounds [24 x i8*]* %337, i32 0, i64 6
  %339 = load i8** %338, align 8
  %340 = call i64 @strlen(i8* %339) nounwind readonly
  %341 = trunc i64 %340 to i32
  %342 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %343 = call i32 @match_prefix(i8* %333, i32 %341, i8* %342)
  %344 = icmp sgt i32 %343, 0
  br i1 %344, label %345, label %348

; <label>:345                                     ; preds = %327
  %346 = load %struct.mg_connection** %1, align 8
  %347 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  call void @handle_ssi_file_request(%struct.mg_connection* %346, i8* %347)
  br label %358

; <label>:348                                     ; preds = %327
  %349 = load %struct.mg_connection** %1, align 8
  %350 = call i32 @is_not_modified(%struct.mg_connection* %349, %struct.file* %file)
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %354

; <label>:352                                     ; preds = %348
  %353 = load %struct.mg_connection** %1, align 8
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %353, i32 304, i8* getelementptr inbounds ([13 x i8]* @.str73, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0))
  br label %357

; <label>:354                                     ; preds = %348
  %355 = load %struct.mg_connection** %1, align 8
  %356 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  call void @handle_file_request(%struct.mg_connection* %355, i8* %356, %struct.file* %file)
  br label %357

; <label>:357                                     ; preds = %354, %352
  br label %358

; <label>:358                                     ; preds = %357, %345
  br label %359

; <label>:359                                     ; preds = %358, %326
  br label %360

; <label>:360                                     ; preds = %359, %281
  br label %361

; <label>:361                                     ; preds = %360, %255
  br label %362

; <label>:362                                     ; preds = %361, %243
  br label %363

; <label>:363                                     ; preds = %362, %226
  br label %364

; <label>:364                                     ; preds = %363, %212
  br label %365

; <label>:365                                     ; preds = %364, %156
  br label %366

; <label>:366                                     ; preds = %365, %147
  br label %367

; <label>:367                                     ; preds = %366, %139
  br label %368

; <label>:368                                     ; preds = %367, %129
  br label %369

; <label>:369                                     ; preds = %368, %119
  br label %370

; <label>:370                                     ; preds = %369, %112
  br label %371

; <label>:371                                     ; preds = %370, %92
  br label %372

; <label>:372                                     ; preds = %371, %80
  ret void
}

define internal void @log_access(%struct.mg_connection* %conn) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %ri = alloca %struct.mg_request_info*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %date = alloca [64 x i8], align 16
  %src_addr = alloca [50 x i8], align 16
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  %2 = load %struct.mg_connection** %1, align 8
  %3 = getelementptr inbounds %struct.mg_connection* %2, i32 0, i32 1
  %4 = load %struct.mg_context** %3, align 8
  %5 = getelementptr inbounds %struct.mg_context* %4, i32 0, i32 2
  %6 = getelementptr inbounds [24 x i8*]* %5, i32 0, i64 8
  %7 = load i8** %6, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  br label %18

; <label>:10                                      ; preds = %0
  %11 = load %struct.mg_connection** %1, align 8
  %12 = getelementptr inbounds %struct.mg_connection* %11, i32 0, i32 1
  %13 = load %struct.mg_context** %12, align 8
  %14 = getelementptr inbounds %struct.mg_context* %13, i32 0, i32 2
  %15 = getelementptr inbounds [24 x i8*]* %14, i32 0, i64 8
  %16 = load i8** %15, align 8
  %17 = call %struct._IO_FILE* @fopen(i8* %16, i8* getelementptr inbounds ([3 x i8]* @.str7, i32 0, i32 0))
  br label %18

; <label>:18                                      ; preds = %10, %9
  %19 = phi %struct._IO_FILE* [ null, %9 ], [ %17, %10 ]
  store %struct._IO_FILE* %19, %struct._IO_FILE** %fp, align 8
  %20 = load %struct._IO_FILE** %fp, align 8
  %21 = icmp eq %struct._IO_FILE* %20, null
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %18
  br label %93

; <label>:23                                      ; preds = %18
  %24 = getelementptr inbounds [64 x i8]* %date, i32 0, i32 0
  %25 = load %struct.mg_connection** %1, align 8
  %26 = getelementptr inbounds %struct.mg_connection* %25, i32 0, i32 5
  %27 = call %struct.tm* @localtime(i64* %26) nounwind
  %28 = call i64 @strftime(i8* %24, i64 64, i8* getelementptr inbounds ([21 x i8]* @.str50, i32 0, i32 0), %struct.tm* %27) nounwind
  %29 = load %struct.mg_connection** %1, align 8
  %30 = getelementptr inbounds %struct.mg_connection* %29, i32 0, i32 0
  store %struct.mg_request_info* %30, %struct.mg_request_info** %ri, align 8
  %31 = load %struct._IO_FILE** %fp, align 8
  call void @flockfile(%struct._IO_FILE* %31) nounwind
  %32 = getelementptr inbounds [50 x i8]* %src_addr, i32 0, i32 0
  %33 = load %struct.mg_connection** %1, align 8
  %34 = getelementptr inbounds %struct.mg_connection* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.socket* %34, i32 0, i32 2
  call void @sockaddr_to_string(i8* %32, i64 50, %union.usa* %35)
  %36 = load %struct._IO_FILE** %fp, align 8
  %37 = getelementptr inbounds [50 x i8]* %src_addr, i32 0, i32 0
  %38 = load %struct.mg_request_info** %ri, align 8
  %39 = getelementptr inbounds %struct.mg_request_info* %38, i32 0, i32 4
  %40 = load i8** %39, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %23
  br label %47

; <label>:43                                      ; preds = %23
  %44 = load %struct.mg_request_info** %ri, align 8
  %45 = getelementptr inbounds %struct.mg_request_info* %44, i32 0, i32 4
  %46 = load i8** %45, align 8
  br label %47

; <label>:47                                      ; preds = %43, %42
  %48 = phi i8* [ getelementptr inbounds ([2 x i8]* @.str52, i32 0, i32 0), %42 ], [ %46, %43 ]
  %49 = getelementptr inbounds [64 x i8]* %date, i32 0, i32 0
  %50 = load %struct.mg_request_info** %ri, align 8
  %51 = getelementptr inbounds %struct.mg_request_info* %50, i32 0, i32 0
  %52 = load i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %58

; <label>:54                                      ; preds = %47
  %55 = load %struct.mg_request_info** %ri, align 8
  %56 = getelementptr inbounds %struct.mg_request_info* %55, i32 0, i32 0
  %57 = load i8** %56, align 8
  br label %59

; <label>:58                                      ; preds = %47
  br label %59

; <label>:59                                      ; preds = %58, %54
  %60 = phi i8* [ %57, %54 ], [ getelementptr inbounds ([2 x i8]* @.str52, i32 0, i32 0), %58 ]
  %61 = load %struct.mg_request_info** %ri, align 8
  %62 = getelementptr inbounds %struct.mg_request_info* %61, i32 0, i32 1
  %63 = load i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %69

; <label>:65                                      ; preds = %59
  %66 = load %struct.mg_request_info** %ri, align 8
  %67 = getelementptr inbounds %struct.mg_request_info* %66, i32 0, i32 1
  %68 = load i8** %67, align 8
  br label %70

; <label>:69                                      ; preds = %59
  br label %70

; <label>:70                                      ; preds = %69, %65
  %71 = phi i8* [ %68, %65 ], [ getelementptr inbounds ([2 x i8]* @.str52, i32 0, i32 0), %69 ]
  %72 = load %struct.mg_request_info** %ri, align 8
  %73 = getelementptr inbounds %struct.mg_request_info* %72, i32 0, i32 2
  %74 = load i8** %73, align 8
  %75 = load %struct.mg_connection** %1, align 8
  %76 = getelementptr inbounds %struct.mg_connection* %75, i32 0, i32 15
  %77 = load i32* %76, align 4
  %78 = load %struct.mg_connection** %1, align 8
  %79 = getelementptr inbounds %struct.mg_connection* %78, i32 0, i32 6
  %80 = load i64* %79, align 8
  %81 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([36 x i8]* @.str51, i32 0, i32 0), i8* %37, i8* %48, i8* %49, i8* %60, i8* %71, i8* %74, i32 %77, i64 %80)
  %82 = load %struct.mg_connection** %1, align 8
  %83 = load %struct._IO_FILE** %fp, align 8
  call void @log_header(%struct.mg_connection* %82, i8* getelementptr inbounds ([8 x i8]* @.str53, i32 0, i32 0), %struct._IO_FILE* %83)
  %84 = load %struct.mg_connection** %1, align 8
  %85 = load %struct._IO_FILE** %fp, align 8
  call void @log_header(%struct.mg_connection* %84, i8* getelementptr inbounds ([11 x i8]* @.str54, i32 0, i32 0), %struct._IO_FILE* %85)
  %86 = load %struct._IO_FILE** %fp, align 8
  %87 = call i32 @fputc(i32 10, %struct._IO_FILE* %86)
  %88 = load %struct._IO_FILE** %fp, align 8
  %89 = call i32 @fflush(%struct._IO_FILE* %88)
  %90 = load %struct._IO_FILE** %fp, align 8
  call void @funlockfile(%struct._IO_FILE* %90) nounwind
  %91 = load %struct._IO_FILE** %fp, align 8
  %92 = call i32 @fclose(%struct._IO_FILE* %91)
  br label %93

; <label>:93                                      ; preds = %70, %22
  ret void
}

define internal i32 @should_keep_alive(%struct.mg_connection* %conn) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mg_connection*, align 8
  %http_version = alloca i8*, align 8
  %header = alloca i8*, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %2, align 8
  %3 = load %struct.mg_connection** %2, align 8
  %4 = getelementptr inbounds %struct.mg_connection* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.mg_request_info* %4, i32 0, i32 2
  %6 = load i8** %5, align 8
  store i8* %6, i8** %http_version, align 8
  %7 = load %struct.mg_connection** %2, align 8
  %8 = call i8* @mg_get_header(%struct.mg_connection* %7, i8* getelementptr inbounds ([11 x i8]* @.str48, i32 0, i32 0))
  store i8* %8, i8** %header, align 8
  %9 = load %struct.mg_connection** %2, align 8
  %10 = getelementptr inbounds %struct.mg_connection* %9, i32 0, i32 11
  %11 = load i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %44, label %13

; <label>:13                                      ; preds = %0
  %14 = load %struct.mg_connection** %2, align 8
  %15 = getelementptr inbounds %struct.mg_connection* %14, i32 0, i32 15
  %16 = load i32* %15, align 4
  %17 = icmp eq i32 %16, 401
  br i1 %17, label %44, label %18

; <label>:18                                      ; preds = %13
  %19 = load %struct.mg_connection** %2, align 8
  %20 = getelementptr inbounds %struct.mg_connection* %19, i32 0, i32 1
  %21 = load %struct.mg_context** %20, align 8
  %22 = getelementptr inbounds %struct.mg_context* %21, i32 0, i32 2
  %23 = getelementptr inbounds [24 x i8*]* %22, i32 0, i64 13
  %24 = load i8** %23, align 8
  %25 = call i32 @mg_strcasecmp(i8* %24, i8* getelementptr inbounds ([4 x i8]* @.str37, i32 0, i32 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %44, label %27

; <label>:27                                      ; preds = %18
  %28 = load i8** %header, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

; <label>:30                                      ; preds = %27
  %31 = load i8** %header, align 8
  %32 = call i32 @mg_strcasecmp(i8* %31, i8* getelementptr inbounds ([11 x i8]* @.str49, i32 0, i32 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

; <label>:34                                      ; preds = %30, %27
  %35 = load i8** %header, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %45

; <label>:37                                      ; preds = %34
  %38 = load i8** %http_version, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %45

; <label>:40                                      ; preds = %37
  %41 = load i8** %http_version, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([4 x i8]* @.str42, i32 0, i32 0)) nounwind readonly
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

; <label>:44                                      ; preds = %40, %30, %18, %13, %0
  store i32 0, i32* %1
  br label %46

; <label>:45                                      ; preds = %40, %37, %34
  store i32 1, i32* %1
  br label %46

; <label>:46                                      ; preds = %45, %44
  %47 = load i32* %1
  ret i32 %47
}

declare i64 @strftime(i8*, i64, i8*, %struct.tm*) nounwind

declare %struct.tm* @localtime(i64*) nounwind

declare void @flockfile(%struct._IO_FILE*) nounwind

define internal void @sockaddr_to_string(i8* %buf, i64 %len, %union.usa* %usa) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %union.usa*, align 8
  store i8* %buf, i8** %1, align 8
  store i64 %len, i64* %2, align 8
  store %union.usa* %usa, %union.usa** %3, align 8
  %4 = load i8** %1, align 8
  %5 = getelementptr inbounds i8* %4, i64 0
  store i8 0, i8* %5
  %6 = load %union.usa** %3, align 8
  %7 = bitcast %union.usa* %6 to %struct.sockaddr*
  %8 = getelementptr inbounds %struct.sockaddr* %7, i32 0, i32 0
  %9 = load i16* %8, align 2
  %10 = zext i16 %9 to i32
  %11 = load %union.usa** %3, align 8
  %12 = bitcast %union.usa* %11 to %struct.sockaddr_in*
  %13 = getelementptr inbounds %struct.sockaddr_in* %12, i32 0, i32 2
  %14 = bitcast %struct.in_addr* %13 to i8*
  %15 = load i8** %1, align 8
  %16 = load i64* %2, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i8* @inet_ntop(i32 %10, i8* %14, i8* %15, i32 %17) nounwind
  ret void
}

define internal void @log_header(%struct.mg_connection* %conn, i8* %header, %struct._IO_FILE* %fp) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %header_value = alloca i8*, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %header, i8** %2, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %3, align 8
  %4 = load %struct.mg_connection** %1, align 8
  %5 = load i8** %2, align 8
  %6 = call i8* @mg_get_header(%struct.mg_connection* %4, i8* %5)
  store i8* %6, i8** %header_value, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %0
  %9 = load %struct._IO_FILE** %3, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str55, i32 0, i32 0))
  br label %15

; <label>:11                                      ; preds = %0
  %12 = load %struct._IO_FILE** %3, align 8
  %13 = load i8** %header_value, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([6 x i8]* @.str56, i32 0, i32 0), i8* %13)
  br label %15

; <label>:15                                      ; preds = %11, %8
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*)

declare i32 @fflush(%struct._IO_FILE*)

declare void @funlockfile(%struct._IO_FILE*) nounwind

declare i8* @inet_ntop(i32, i8*, i8*, i32) nounwind

define internal void @remove_double_dots_and_double_slashes(i8* %s) nounwind uwtable {
  %1 = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %s, i8** %1, align 8
  %2 = load i8** %1, align 8
  store i8* %2, i8** %p, align 8
  br label %3

; <label>:3                                       ; preds = %66, %0
  %4 = load i8** %1, align 8
  %5 = load i8* %4
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %67

; <label>:8                                       ; preds = %3
  %9 = load i8** %1, align 8
  %10 = getelementptr inbounds i8* %9, i32 1
  store i8* %10, i8** %1, align 8
  %11 = load i8* %9
  %12 = load i8** %p, align 8
  %13 = getelementptr inbounds i8* %12, i32 1
  store i8* %13, i8** %p, align 8
  store i8 %11, i8* %12
  %14 = load i8** %1, align 8
  %15 = getelementptr inbounds i8* %14, i64 -1
  %16 = load i8* %15
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 47
  br i1 %18, label %25, label %19

; <label>:19                                      ; preds = %8
  %20 = load i8** %1, align 8
  %21 = getelementptr inbounds i8* %20, i64 -1
  %22 = load i8* %21
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 92
  br i1 %24, label %25, label %66

; <label>:25                                      ; preds = %19, %8
  br label %26

; <label>:26                                      ; preds = %64, %25
  %27 = load i8** %1, align 8
  %28 = getelementptr inbounds i8* %27, i64 0
  %29 = load i8* %28
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %65

; <label>:32                                      ; preds = %26
  %33 = load i8** %1, align 8
  %34 = getelementptr inbounds i8* %33, i64 0
  %35 = load i8* %34
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 47
  br i1 %37, label %44, label %38

; <label>:38                                      ; preds = %32
  %39 = load i8** %1, align 8
  %40 = getelementptr inbounds i8* %39, i64 0
  %41 = load i8* %40
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 92
  br i1 %43, label %44, label %47

; <label>:44                                      ; preds = %38, %32
  %45 = load i8** %1, align 8
  %46 = getelementptr inbounds i8* %45, i32 1
  store i8* %46, i8** %1, align 8
  br label %64

; <label>:47                                      ; preds = %38
  %48 = load i8** %1, align 8
  %49 = getelementptr inbounds i8* %48, i64 0
  %50 = load i8* %49
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 46
  br i1 %52, label %53, label %62

; <label>:53                                      ; preds = %47
  %54 = load i8** %1, align 8
  %55 = getelementptr inbounds i8* %54, i64 1
  %56 = load i8* %55
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 46
  br i1 %58, label %59, label %62

; <label>:59                                      ; preds = %53
  %60 = load i8** %1, align 8
  %61 = getelementptr inbounds i8* %60, i64 2
  store i8* %61, i8** %1, align 8
  br label %63

; <label>:62                                      ; preds = %53, %47
  br label %65

; <label>:63                                      ; preds = %59
  br label %64

; <label>:64                                      ; preds = %63, %44
  br label %26

; <label>:65                                      ; preds = %62, %26
  br label %66

; <label>:66                                      ; preds = %65, %19
  br label %3

; <label>:67                                      ; preds = %3
  %68 = load i8** %p, align 8
  store i8 0, i8* %68
  ret void
}

define internal void @convert_uri_to_file_name(%struct.mg_connection* %conn, i8* %buf, i64 %buf_len, %struct.file* %filep) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.file*, align 8
  %a = alloca %struct.vec, align 8
  %b = alloca %struct.vec, align 8
  %rewrite = alloca i8*, align 8
  %uri = alloca i8*, align 8
  %root = alloca i8*, align 8
  %p = alloca i8*, align 8
  %match_len = alloca i32, align 4
  %gz_path = alloca [4096 x i8], align 16
  %accept_encoding = alloca i8*, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %buf, i8** %2, align 8
  store i64 %buf_len, i64* %3, align 8
  store %struct.file* %filep, %struct.file** %4, align 8
  %5 = load %struct.mg_connection** %1, align 8
  %6 = getelementptr inbounds %struct.mg_connection* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.mg_request_info* %6, i32 0, i32 1
  %8 = load i8** %7, align 8
  store i8* %8, i8** %uri, align 8
  %9 = load %struct.mg_connection** %1, align 8
  %10 = getelementptr inbounds %struct.mg_connection* %9, i32 0, i32 1
  %11 = load %struct.mg_context** %10, align 8
  %12 = getelementptr inbounds %struct.mg_context* %11, i32 0, i32 2
  %13 = getelementptr inbounds [24 x i8*]* %12, i32 0, i64 17
  %14 = load i8** %13, align 8
  store i8* %14, i8** %root, align 8
  %15 = load %struct.mg_connection** %1, align 8
  %16 = load i8** %2, align 8
  %17 = load i64* %3, align 8
  %18 = sub i64 %17, 1
  %19 = load i8** %root, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %0
  br label %24

; <label>:22                                      ; preds = %0
  %23 = load i8** %root, align 8
  br label %24

; <label>:24                                      ; preds = %22, %21
  %25 = phi i8* [ getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), %21 ], [ %23, %22 ]
  %26 = load i8** %root, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %24
  br label %31

; <label>:29                                      ; preds = %24
  %30 = load i8** %uri, align 8
  br label %31

; <label>:31                                      ; preds = %29, %28
  %32 = phi i8* [ getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), %28 ], [ %30, %29 ]
  %33 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %15, i8* %16, i64 %18, i8* getelementptr inbounds ([5 x i8]* @.str206, i32 0, i32 0), i8* %25, i8* %32)
  %34 = load %struct.mg_connection** %1, align 8
  %35 = getelementptr inbounds %struct.mg_connection* %34, i32 0, i32 1
  %36 = load %struct.mg_context** %35, align 8
  %37 = getelementptr inbounds %struct.mg_context* %36, i32 0, i32 2
  %38 = getelementptr inbounds [24 x i8*]* %37, i32 0, i64 21
  %39 = load i8** %38, align 8
  store i8* %39, i8** %rewrite, align 8
  br label %40

; <label>:40                                      ; preds = %68, %31
  %41 = load i8** %rewrite, align 8
  %42 = call i8* @next_option(i8* %41, %struct.vec* %a, %struct.vec* %b)
  store i8* %42, i8** %rewrite, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %69

; <label>:44                                      ; preds = %40
  %45 = getelementptr inbounds %struct.vec* %a, i32 0, i32 0
  %46 = load i8** %45, align 8
  %47 = getelementptr inbounds %struct.vec* %a, i32 0, i32 1
  %48 = load i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i8** %uri, align 8
  %51 = call i32 @match_prefix(i8* %46, i32 %49, i8* %50)
  store i32 %51, i32* %match_len, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %68

; <label>:53                                      ; preds = %44
  %54 = load %struct.mg_connection** %1, align 8
  %55 = load i8** %2, align 8
  %56 = load i64* %3, align 8
  %57 = sub i64 %56, 1
  %58 = getelementptr inbounds %struct.vec* %b, i32 0, i32 1
  %59 = load i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = getelementptr inbounds %struct.vec* %b, i32 0, i32 0
  %62 = load i8** %61, align 8
  %63 = load i8** %uri, align 8
  %64 = load i32* %match_len, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8* %63, i64 %65
  %67 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %54, i8* %55, i64 %57, i8* getelementptr inbounds ([7 x i8]* @.str248, i32 0, i32 0), i32 %60, i8* %62, i8* %66)
  br label %69

; <label>:68                                      ; preds = %44
  br label %40

; <label>:69                                      ; preds = %53, %40
  %70 = load %struct.mg_connection** %1, align 8
  %71 = load i8** %2, align 8
  %72 = load %struct.file** %4, align 8
  %73 = call i32 @mg_stat(%struct.mg_connection* %70, i8* %71, %struct.file* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

; <label>:75                                      ; preds = %69
  br label %166

; <label>:76                                      ; preds = %69
  %77 = load %struct.mg_connection** %1, align 8
  %78 = call i8* @mg_get_header(%struct.mg_connection* %77, i8* getelementptr inbounds ([16 x i8]* @.str249, i32 0, i32 0))
  store i8* %78, i8** %accept_encoding, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %98

; <label>:80                                      ; preds = %76
  %81 = load i8** %accept_encoding, align 8
  %82 = call i8* @strstr(i8* %81, i8* getelementptr inbounds ([5 x i8]* @.str250, i32 0, i32 0)) nounwind readonly
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %97

; <label>:84                                      ; preds = %80
  %85 = getelementptr inbounds [4096 x i8]* %gz_path, i32 0, i32 0
  %86 = load i8** %2, align 8
  %87 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %85, i64 4096, i8* getelementptr inbounds ([6 x i8]* @.str251, i32 0, i32 0), i8* %86) nounwind
  %88 = load %struct.mg_connection** %1, align 8
  %89 = getelementptr inbounds [4096 x i8]* %gz_path, i32 0, i32 0
  %90 = load %struct.file** %4, align 8
  %91 = call i32 @mg_stat(%struct.mg_connection* %88, i8* %89, %struct.file* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

; <label>:93                                      ; preds = %84
  %94 = load %struct.file** %4, align 8
  %95 = getelementptr inbounds %struct.file* %94, i32 0, i32 5
  store i32 1, i32* %95, align 4
  br label %166

; <label>:96                                      ; preds = %84
  br label %97

; <label>:97                                      ; preds = %96, %80
  br label %98

; <label>:98                                      ; preds = %97, %76
  %99 = load i8** %2, align 8
  %100 = load i8** %root, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %103

; <label>:102                                     ; preds = %98
  br label %105

; <label>:103                                     ; preds = %98
  %104 = load i8** %root, align 8
  br label %105

; <label>:105                                     ; preds = %103, %102
  %106 = phi i8* [ getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), %102 ], [ %104, %103 ]
  %107 = call i64 @strlen(i8* %106) nounwind readonly
  %108 = getelementptr inbounds i8* %99, i64 %107
  store i8* %108, i8** %p, align 8
  br label %109

; <label>:109                                     ; preds = %163, %105
  %110 = load i8** %p, align 8
  %111 = load i8* %110
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %166

; <label>:114                                     ; preds = %109
  %115 = load i8** %p, align 8
  %116 = load i8* %115
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 47
  br i1 %118, label %119, label %162

; <label>:119                                     ; preds = %114
  %120 = load i8** %p, align 8
  store i8 0, i8* %120
  %121 = load %struct.mg_connection** %1, align 8
  %122 = getelementptr inbounds %struct.mg_connection* %121, i32 0, i32 1
  %123 = load %struct.mg_context** %122, align 8
  %124 = getelementptr inbounds %struct.mg_context* %123, i32 0, i32 2
  %125 = getelementptr inbounds [24 x i8*]* %124, i32 0, i64 0
  %126 = load i8** %125, align 8
  %127 = load %struct.mg_connection** %1, align 8
  %128 = getelementptr inbounds %struct.mg_connection* %127, i32 0, i32 1
  %129 = load %struct.mg_context** %128, align 8
  %130 = getelementptr inbounds %struct.mg_context* %129, i32 0, i32 2
  %131 = getelementptr inbounds [24 x i8*]* %130, i32 0, i64 0
  %132 = load i8** %131, align 8
  %133 = call i64 @strlen(i8* %132) nounwind readonly
  %134 = trunc i64 %133 to i32
  %135 = load i8** %2, align 8
  %136 = call i32 @match_prefix(i8* %126, i32 %134, i8* %135)
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %159

; <label>:138                                     ; preds = %119
  %139 = load %struct.mg_connection** %1, align 8
  %140 = load i8** %2, align 8
  %141 = load %struct.file** %4, align 8
  %142 = call i32 @mg_stat(%struct.mg_connection* %139, i8* %140, %struct.file* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %159

; <label>:144                                     ; preds = %138
  %145 = load i8** %p, align 8
  %146 = getelementptr inbounds i8* %145, i64 1
  %147 = load %struct.mg_connection** %1, align 8
  %148 = getelementptr inbounds %struct.mg_connection* %147, i32 0, i32 10
  store i8* %146, i8** %148, align 8
  %149 = load i8** %p, align 8
  %150 = getelementptr inbounds i8* %149, i64 2
  %151 = load i8** %p, align 8
  %152 = getelementptr inbounds i8* %151, i64 1
  %153 = load i8** %p, align 8
  %154 = getelementptr inbounds i8* %153, i64 1
  %155 = call i64 @strlen(i8* %154) nounwind readonly
  %156 = add i64 %155, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %150, i8* %152, i64 %156, i32 1, i1 false)
  %157 = load i8** %p, align 8
  %158 = getelementptr inbounds i8* %157, i64 1
  store i8 47, i8* %158
  br label %166

; <label>:159                                     ; preds = %138, %119
  %160 = load i8** %p, align 8
  store i8 47, i8* %160
  br label %161

; <label>:161                                     ; preds = %159
  br label %162

; <label>:162                                     ; preds = %161, %114
  br label %163

; <label>:163                                     ; preds = %162
  %164 = load i8** %p, align 8
  %165 = getelementptr inbounds i8* %164, i32 1
  store i8* %165, i8** %p, align 8
  br label %109

; <label>:166                                     ; preds = %75, %93, %144, %109
  ret void
}

define internal i32 @set_throttle(i8* %spec, i32 %remote_ip, i8* %uri) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %throttle = alloca i32, align 4
  %vec = alloca %struct.vec, align 8
  %val = alloca %struct.vec, align 8
  %net = alloca i32, align 4
  %mask = alloca i32, align 4
  %mult = alloca i8, align 1
  %v = alloca double, align 8
  store i8* %spec, i8** %1, align 8
  store i32 %remote_ip, i32* %2, align 4
  store i8* %uri, i8** %3, align 8
  store i32 0, i32* %throttle, align 4
  br label %4

; <label>:4                                       ; preds = %82, %26, %0
  %5 = load i8** %1, align 8
  %6 = call i8* @next_option(i8* %5, %struct.vec* %vec, %struct.vec* %val)
  store i8* %6, i8** %1, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %83

; <label>:8                                       ; preds = %4
  store i8 44, i8* %mult, align 1
  %9 = getelementptr inbounds %struct.vec* %val, i32 0, i32 0
  %10 = load i8** %9, align 8
  %11 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %10, i8* getelementptr inbounds ([6 x i8]* @.str245, i32 0, i32 0), double* %v, i8* %mult) nounwind
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %26, label %13

; <label>:13                                      ; preds = %8
  %14 = load double* %v, align 8
  %15 = fcmp olt double %14, 0.000000e+00
  br i1 %15, label %26, label %16

; <label>:16                                      ; preds = %13
  %17 = call i32 @lowercase(i8* %mult)
  %18 = icmp ne i32 %17, 107
  br i1 %18, label %19, label %27

; <label>:19                                      ; preds = %16
  %20 = call i32 @lowercase(i8* %mult)
  %21 = icmp ne i32 %20, 109
  br i1 %21, label %22, label %27

; <label>:22                                      ; preds = %19
  %23 = load i8* %mult, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 44
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %22, %13, %8
  br label %4

; <label>:27                                      ; preds = %22, %19, %16
  %28 = call i32 @lowercase(i8* %mult)
  %29 = icmp eq i32 %28, 107
  br i1 %29, label %30, label %31

; <label>:30                                      ; preds = %27
  br label %35

; <label>:31                                      ; preds = %27
  %32 = call i32 @lowercase(i8* %mult)
  %33 = icmp eq i32 %32, 109
  %34 = select i1 %33, i32 1048576, i32 1
  br label %35

; <label>:35                                      ; preds = %31, %30
  %36 = phi i32 [ 1024, %30 ], [ %34, %31 ]
  %37 = sitofp i32 %36 to double
  %38 = load double* %v, align 8
  %39 = fmul double %38, %37
  store double %39, double* %v, align 8
  %40 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 1
  %41 = load i64* %40, align 8
  %42 = icmp eq i64 %41, 1
  br i1 %42, label %43, label %53

; <label>:43                                      ; preds = %35
  %44 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 0
  %45 = load i8** %44, align 8
  %46 = getelementptr inbounds i8* %45, i64 0
  %47 = load i8* %46
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 42
  br i1 %49, label %50, label %53

; <label>:50                                      ; preds = %43
  %51 = load double* %v, align 8
  %52 = fptosi double %51 to i32
  store i32 %52, i32* %throttle, align 4
  br label %82

; <label>:53                                      ; preds = %43, %35
  %54 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 0
  %55 = load i8** %54, align 8
  %56 = call i32 @parse_net(i8* %55, i32* %net, i32* %mask)
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %68

; <label>:58                                      ; preds = %53
  %59 = load i32* %2, align 4
  %60 = load i32* %mask, align 4
  %61 = and i32 %59, %60
  %62 = load i32* %net, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

; <label>:64                                      ; preds = %58
  %65 = load double* %v, align 8
  %66 = fptosi double %65 to i32
  store i32 %66, i32* %throttle, align 4
  br label %67

; <label>:67                                      ; preds = %64, %58
  br label %81

; <label>:68                                      ; preds = %53
  %69 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 0
  %70 = load i8** %69, align 8
  %71 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 1
  %72 = load i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i8** %3, align 8
  %75 = call i32 @match_prefix(i8* %70, i32 %73, i8* %74)
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %80

; <label>:77                                      ; preds = %68
  %78 = load double* %v, align 8
  %79 = fptosi double %78 to i32
  store i32 %79, i32* %throttle, align 4
  br label %80

; <label>:80                                      ; preds = %77, %68
  br label %81

; <label>:81                                      ; preds = %80, %67
  br label %82

; <label>:82                                      ; preds = %81, %50
  br label %4

; <label>:83                                      ; preds = %4
  %84 = load i32* %throttle, align 4
  ret i32 %84
}

define internal i32 @get_remote_ip(%struct.mg_connection* %conn) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  %2 = load %struct.mg_connection** %1, align 8
  %3 = getelementptr inbounds %struct.mg_connection* %2, i32 0, i32 4
  %4 = getelementptr inbounds %struct.socket* %3, i32 0, i32 2
  %5 = bitcast %union.usa* %4 to %struct.sockaddr_in*
  %6 = getelementptr inbounds %struct.sockaddr_in* %5, i32 0, i32 2
  %7 = bitcast %struct.in_addr* %6 to i32*
  %8 = load i32* %7
  %9 = call i32 @ntohl(i32 %8) nounwind readnone
  ret i32 %9
}

define internal i32 @get_first_ssl_listener_index(%struct.mg_context* %ctx) nounwind uwtable {
  %1 = alloca %struct.mg_context*, align 8
  %i = alloca i32, align 4
  %index = alloca i32, align 4
  store %struct.mg_context* %ctx, %struct.mg_context** %1, align 8
  store i32 -1, i32* %index, align 4
  store i32 0, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %31, %0
  %3 = load i32* %index, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %11

; <label>:5                                       ; preds = %2
  %6 = load i32* %i, align 4
  %7 = load %struct.mg_context** %1, align 8
  %8 = getelementptr inbounds %struct.mg_context* %7, i32 0, i32 6
  %9 = load i32* %8, align 4
  %10 = icmp slt i32 %6, %9
  br label %11

; <label>:11                                      ; preds = %5, %2
  %12 = phi i1 [ false, %2 ], [ %10, %5 ]
  br i1 %12, label %13, label %34

; <label>:13                                      ; preds = %11
  %14 = load i32* %i, align 4
  %15 = sext i32 %14 to i64
  %16 = load %struct.mg_context** %1, align 8
  %17 = getelementptr inbounds %struct.mg_context* %16, i32 0, i32 5
  %18 = load %struct.socket** %17, align 8
  %19 = getelementptr inbounds %struct.socket* %18, i64 %15
  %20 = bitcast %struct.socket* %19 to i8*
  %21 = getelementptr i8* %20, i32 36
  %22 = bitcast i8* %21 to i32*
  %23 = load i32* %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

; <label>:26                                      ; preds = %13
  %27 = load i32* %i, align 4
  br label %29

; <label>:28                                      ; preds = %13
  br label %29

; <label>:29                                      ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ -1, %28 ]
  store i32 %30, i32* %index, align 4
  br label %31

; <label>:31                                      ; preds = %29
  %32 = load i32* %i, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %i, align 4
  br label %2

; <label>:34                                      ; preds = %11
  %35 = load i32* %index, align 4
  ret i32 %35
}

define internal void @redirect_to_https_port(%struct.mg_connection* %conn, i32 %ssl_index) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i32, align 4
  %host = alloca [1025 x i8], align 16
  %host_header = alloca i8*, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i32 %ssl_index, i32* %2, align 4
  %3 = load %struct.mg_connection** %1, align 8
  %4 = call i8* @mg_get_header(%struct.mg_connection* %3, i8* getelementptr inbounds ([5 x i8]* @.str242, i32 0, i32 0))
  store i8* %4, i8** %host_header, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %11, label %6

; <label>:6                                       ; preds = %0
  %7 = load i8** %host_header, align 8
  %8 = getelementptr inbounds [1025 x i8]* %host, i32 0, i32 0
  %9 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([10 x i8]* @.str243, i32 0, i32 0), i8* %8) nounwind
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

; <label>:11                                      ; preds = %6, %0
  %12 = getelementptr inbounds [1025 x i8]* %host, i32 0, i32 0
  %13 = load %struct.mg_connection** %1, align 8
  %14 = getelementptr inbounds %struct.mg_connection* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.socket* %14, i32 0, i32 1
  call void @sockaddr_to_string(i8* %12, i64 1025, %union.usa* %15)
  br label %16

; <label>:16                                      ; preds = %11, %6
  %17 = load %struct.mg_connection** %1, align 8
  %18 = getelementptr inbounds [1025 x i8]* %host, i32 0, i32 0
  %19 = load i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.mg_connection** %1, align 8
  %22 = getelementptr inbounds %struct.mg_connection* %21, i32 0, i32 1
  %23 = load %struct.mg_context** %22, align 8
  %24 = getelementptr inbounds %struct.mg_context* %23, i32 0, i32 5
  %25 = load %struct.socket** %24, align 8
  %26 = getelementptr inbounds %struct.socket* %25, i64 %20
  %27 = getelementptr inbounds %struct.socket* %26, i32 0, i32 1
  %28 = bitcast %union.usa* %27 to %struct.sockaddr_in*
  %29 = getelementptr inbounds %struct.sockaddr_in* %28, i32 0, i32 1
  %30 = load i16* %29, align 2
  %31 = call zeroext i16 @ntohs(i16 zeroext %30) nounwind readnone
  %32 = zext i16 %31 to i32
  %33 = load %struct.mg_connection** %1, align 8
  %34 = getelementptr inbounds %struct.mg_connection* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.mg_request_info* %34, i32 0, i32 1
  %36 = load i8** %35, align 8
  %37 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %17, i8* getelementptr inbounds ([50 x i8]* @.str244, i32 0, i32 0), i8* %18, i32 %32, i8* %36)
  ret void
}

define internal i32 @is_put_or_delete_request(%struct.mg_connection* %conn) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %s = alloca i8*, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  %2 = load %struct.mg_connection** %1, align 8
  %3 = getelementptr inbounds %struct.mg_connection* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.mg_request_info* %3, i32 0, i32 0
  %5 = load i8** %4, align 8
  store i8* %5, i8** %s, align 8
  %6 = load i8** %s, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %23

; <label>:8                                       ; preds = %0
  %9 = load i8** %s, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([4 x i8]* @.str58, i32 0, i32 0)) nounwind readonly
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

; <label>:12                                      ; preds = %8
  %13 = load i8** %s, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([7 x i8]* @.str60, i32 0, i32 0)) nounwind readonly
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

; <label>:16                                      ; preds = %12
  %17 = load i8** %s, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([6 x i8]* @.str59, i32 0, i32 0)) nounwind readonly
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

; <label>:21                                      ; preds = %16, %12, %8
  %22 = phi i1 [ true, %12 ], [ true, %8 ], [ %20, %16 ]
  br label %23

; <label>:23                                      ; preds = %21, %0
  %24 = phi i1 [ false, %0 ], [ %22, %21 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

define internal i32 @check_authorization(%struct.mg_connection* %conn, i8* %path) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %fname = alloca [4096 x i8], align 16
  %uri_vec = alloca %struct.vec, align 8
  %filename_vec = alloca %struct.vec, align 8
  %list = alloca i8*, align 8
  %file = alloca %struct.file, align 8
  %authorized = alloca i32, align 4
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %path, i8** %2, align 8
  %3 = bitcast %struct.file* %file to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 48, i32 8, i1 false)
  %4 = bitcast i8* %3 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %5 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %4, i32 0, i32 6
  store i32 1, i32* %authorized, align 4
  %6 = load %struct.mg_connection** %1, align 8
  %7 = getelementptr inbounds %struct.mg_connection* %6, i32 0, i32 1
  %8 = load %struct.mg_context** %7, align 8
  %9 = getelementptr inbounds %struct.mg_context* %8, i32 0, i32 2
  %10 = getelementptr inbounds [24 x i8*]* %9, i32 0, i64 4
  %11 = load i8** %10, align 8
  store i8* %11, i8** %list, align 8
  br label %12

; <label>:12                                      ; preds = %47, %0
  %13 = load i8** %list, align 8
  %14 = call i8* @next_option(i8* %13, %struct.vec* %uri_vec, %struct.vec* %filename_vec)
  store i8* %14, i8** %list, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %48

; <label>:16                                      ; preds = %12
  %17 = load %struct.mg_connection** %1, align 8
  %18 = getelementptr inbounds %struct.mg_connection* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.mg_request_info* %18, i32 0, i32 1
  %20 = load i8** %19, align 8
  %21 = getelementptr inbounds %struct.vec* %uri_vec, i32 0, i32 0
  %22 = load i8** %21, align 8
  %23 = getelementptr inbounds %struct.vec* %uri_vec, i32 0, i32 1
  %24 = load i64* %23, align 8
  %25 = call i32 @memcmp(i8* %20, i8* %22, i64 %24) nounwind readonly
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %47, label %27

; <label>:27                                      ; preds = %16
  %28 = load %struct.mg_connection** %1, align 8
  %29 = getelementptr inbounds [4096 x i8]* %fname, i32 0, i32 0
  %30 = getelementptr inbounds %struct.vec* %filename_vec, i32 0, i32 1
  %31 = load i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds %struct.vec* %filename_vec, i32 0, i32 0
  %34 = load i8** %33, align 8
  %35 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %28, i8* %29, i64 4096, i8* getelementptr inbounds ([5 x i8]* @.str175, i32 0, i32 0), i32 %32, i8* %34)
  %36 = load %struct.mg_connection** %1, align 8
  %37 = getelementptr inbounds [4096 x i8]* %fname, i32 0, i32 0
  %38 = call i32 @mg_fopen(%struct.mg_connection* %36, i8* %37, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), %struct.file* %file)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

; <label>:40                                      ; preds = %27
  %41 = load %struct.mg_connection** %1, align 8
  %42 = getelementptr inbounds [4096 x i8]* %fname, i32 0, i32 0
  %43 = call i32* @__errno_location() nounwind readnone
  %44 = load i32* %43
  %45 = call i8* @strerror(i32 %44) nounwind
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %41, i8* getelementptr inbounds ([23 x i8]* @.str239, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @__func__.check_authorization, i32 0, i32 0), i8* %42, i8* %45)
  br label %46

; <label>:46                                      ; preds = %40, %27
  br label %48

; <label>:47                                      ; preds = %16
  br label %12

; <label>:48                                      ; preds = %46, %12
  %49 = call i32 @is_file_opened(%struct.file* %file)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

; <label>:51                                      ; preds = %48
  %52 = load %struct.mg_connection** %1, align 8
  %53 = load i8** %2, align 8
  call void @open_auth_file(%struct.mg_connection* %52, i8* %53, %struct.file* %file)
  br label %54

; <label>:54                                      ; preds = %51, %48
  %55 = call i32 @is_file_opened(%struct.file* %file)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

; <label>:57                                      ; preds = %54
  %58 = load %struct.mg_connection** %1, align 8
  %59 = call i32 @authorize(%struct.mg_connection* %58, %struct.file* %file)
  store i32 %59, i32* %authorized, align 4
  call void @mg_fclose(%struct.file* %file)
  br label %60

; <label>:60                                      ; preds = %57, %54
  %61 = load i32* %authorized, align 4
  ret i32 %61
}

define internal void @send_authorization_request(%struct.mg_connection* %conn) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  %2 = load %struct.mg_connection** %1, align 8
  %3 = getelementptr inbounds %struct.mg_connection* %2, i32 0, i32 15
  store i32 401, i32* %3, align 4
  %4 = load %struct.mg_connection** %1, align 8
  %5 = load %struct.mg_connection** %1, align 8
  %6 = getelementptr inbounds %struct.mg_connection* %5, i32 0, i32 1
  %7 = load %struct.mg_context** %6, align 8
  %8 = getelementptr inbounds %struct.mg_context* %7, i32 0, i32 2
  %9 = getelementptr inbounds [24 x i8*]* %8, i32 0, i64 5
  %10 = load i8** %9, align 8
  %11 = call i64 @time(i64* null) nounwind
  %12 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %4, i8* getelementptr inbounds ([111 x i8]* @.str238, i32 0, i32 0), i8* %10, i64 %11)
  ret void
}

define internal void @send_options(%struct.mg_connection* %conn) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  %2 = load %struct.mg_connection** %1, align 8
  %3 = getelementptr inbounds %struct.mg_connection* %2, i32 0, i32 15
  store i32 200, i32* %3, align 4
  %4 = load %struct.mg_connection** %1, align 8
  %5 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %4, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8]* @.str237, i32 0, i32 0))
  ret void
}

define internal i32 @is_authorized_for_put(%struct.mg_connection* %conn) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %file = alloca %struct.file, align 8
  %passfile = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  %2 = bitcast %struct.file* %file to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 48, i32 8, i1 false)
  %3 = bitcast i8* %2 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %4 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %3, i32 0, i32 6
  %5 = load %struct.mg_connection** %1, align 8
  %6 = getelementptr inbounds %struct.mg_connection* %5, i32 0, i32 1
  %7 = load %struct.mg_context** %6, align 8
  %8 = getelementptr inbounds %struct.mg_context* %7, i32 0, i32 2
  %9 = getelementptr inbounds [24 x i8*]* %8, i32 0, i64 2
  %10 = load i8** %9, align 8
  store i8* %10, i8** %passfile, align 8
  store i32 0, i32* %ret, align 4
  %11 = load i8** %passfile, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %21

; <label>:13                                      ; preds = %0
  %14 = load %struct.mg_connection** %1, align 8
  %15 = load i8** %passfile, align 8
  %16 = call i32 @mg_fopen(%struct.mg_connection* %14, i8* %15, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), %struct.file* %file)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

; <label>:18                                      ; preds = %13
  %19 = load %struct.mg_connection** %1, align 8
  %20 = call i32 @authorize(%struct.mg_connection* %19, %struct.file* %file)
  store i32 %20, i32* %ret, align 4
  call void @mg_fclose(%struct.file* %file)
  br label %21

; <label>:21                                      ; preds = %18, %13, %0
  %22 = load i32* %ret, align 4
  ret i32 %22
}

define internal void @put_file(%struct.mg_connection* %conn, i8* %path) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %file = alloca %struct.file, align 8
  %range = alloca i8*, align 8
  %r1 = alloca i64, align 8
  %r2 = alloca i64, align 8
  %rc = alloca i32, align 4
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %path, i8** %2, align 8
  %3 = bitcast %struct.file* %file to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 48, i32 8, i1 false)
  %4 = bitcast i8* %3 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %5 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %4, i32 0, i32 6
  %6 = load %struct.mg_connection** %1, align 8
  %7 = load i8** %2, align 8
  %8 = call i32 @mg_stat(%struct.mg_connection* %6, i8* %7, %struct.file* %file)
  %9 = icmp ne i32 %8, 0
  %10 = select i1 %9, i32 200, i32 201
  %11 = load %struct.mg_connection** %1, align 8
  %12 = getelementptr inbounds %struct.mg_connection* %11, i32 0, i32 15
  store i32 %10, i32* %12, align 4
  %13 = load %struct.mg_connection** %1, align 8
  %14 = load i8** %2, align 8
  %15 = call i32 @put_dir(%struct.mg_connection* %13, i8* %14)
  store i32 %15, i32* %rc, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

; <label>:17                                      ; preds = %0
  %18 = load %struct.mg_connection** %1, align 8
  %19 = load %struct.mg_connection** %1, align 8
  %20 = getelementptr inbounds %struct.mg_connection* %19, i32 0, i32 15
  %21 = load i32* %20, align 4
  %22 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %18, i8* getelementptr inbounds ([19 x i8]* @.str218, i32 0, i32 0), i32 %21)
  br label %82

; <label>:23                                      ; preds = %0
  %24 = load i32* %rc, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %33

; <label>:26                                      ; preds = %23
  %27 = load %struct.mg_connection** %1, align 8
  %28 = load i8** @http_500_error, align 8
  %29 = load i8** %2, align 8
  %30 = call i32* @__errno_location() nounwind readnone
  %31 = load i32* %30
  %32 = call i8* @strerror(i32 %31) nounwind
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %27, i32 500, i8* %28, i8* getelementptr inbounds ([16 x i8]* @.str219, i32 0, i32 0), i8* %29, i8* %32)
  br label %81

; <label>:33                                      ; preds = %23
  %34 = load %struct.mg_connection** %1, align 8
  %35 = load i8** %2, align 8
  %36 = call i32 @mg_fopen(%struct.mg_connection* %34, i8* %35, i8* getelementptr inbounds ([4 x i8]* @.str220, i32 0, i32 0), %struct.file* %file)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

; <label>:38                                      ; preds = %33
  %39 = getelementptr inbounds %struct.file* %file, i32 0, i32 3
  %40 = load %struct._IO_FILE** %39, align 8
  %41 = icmp eq %struct._IO_FILE* %40, null
  br i1 %41, label %42, label %49

; <label>:42                                      ; preds = %38, %33
  call void @mg_fclose(%struct.file* %file)
  %43 = load %struct.mg_connection** %1, align 8
  %44 = load i8** @http_500_error, align 8
  %45 = load i8** %2, align 8
  %46 = call i32* @__errno_location() nounwind readnone
  %47 = load i32* %46
  %48 = call i8* @strerror(i32 %47) nounwind
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %43, i32 500, i8* %44, i8* getelementptr inbounds ([14 x i8]* @.str94, i32 0, i32 0), i8* %45, i8* %48)
  br label %80

; <label>:49                                      ; preds = %38
  call void @fclose_on_exec(%struct.file* %file)
  %50 = load %struct.mg_connection** %1, align 8
  %51 = call i8* @mg_get_header(%struct.mg_connection* %50, i8* getelementptr inbounds ([14 x i8]* @.str221, i32 0, i32 0))
  store i8* %51, i8** %range, align 8
  store i64 0, i64* %r2, align 8
  store i64 0, i64* %r1, align 8
  %52 = load i8** %range, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %65

; <label>:54                                      ; preds = %49
  %55 = load i8** %range, align 8
  %56 = call i32 @parse_range_header(i8* %55, i64* %r1, i64* %r2)
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %65

; <label>:58                                      ; preds = %54
  %59 = load %struct.mg_connection** %1, align 8
  %60 = getelementptr inbounds %struct.mg_connection* %59, i32 0, i32 15
  store i32 206, i32* %60, align 4
  %61 = getelementptr inbounds %struct.file* %file, i32 0, i32 3
  %62 = load %struct._IO_FILE** %61, align 8
  %63 = load i64* %r1, align 8
  %64 = call i32 @fseeko(%struct._IO_FILE* %62, i64 %63, i32 0)
  br label %65

; <label>:65                                      ; preds = %58, %54, %49
  %66 = load %struct.mg_connection** %1, align 8
  %67 = getelementptr inbounds %struct.file* %file, i32 0, i32 3
  %68 = load %struct._IO_FILE** %67, align 8
  %69 = call i32 @forward_body_data(%struct.mg_connection* %66, %struct._IO_FILE* %68, i32 -1, %struct.ssl_st* null)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

; <label>:71                                      ; preds = %65
  %72 = load %struct.mg_connection** %1, align 8
  %73 = getelementptr inbounds %struct.mg_connection* %72, i32 0, i32 15
  store i32 500, i32* %73, align 4
  br label %74

; <label>:74                                      ; preds = %71, %65
  %75 = load %struct.mg_connection** %1, align 8
  %76 = load %struct.mg_connection** %1, align 8
  %77 = getelementptr inbounds %struct.mg_connection* %76, i32 0, i32 15
  %78 = load i32* %77, align 4
  %79 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %75, i8* getelementptr inbounds ([38 x i8]* @.str222, i32 0, i32 0), i32 %78)
  call void @mg_fclose(%struct.file* %file)
  br label %80

; <label>:80                                      ; preds = %74, %42
  br label %81

; <label>:81                                      ; preds = %80, %26
  br label %82

; <label>:82                                      ; preds = %81, %17
  ret void
}

define internal void @mkcol(%struct.mg_connection* %conn, i8* %path) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %rc = alloca i32, align 4
  %body_len = alloca i32, align 4
  %de = alloca %struct.de, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %path, i8** %2, align 8
  %3 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %4 = bitcast %struct.file* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 48, i32 1, i1 false)
  %5 = load %struct.mg_connection** %1, align 8
  %6 = load i8** %2, align 8
  %7 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %8 = call i32 @mg_stat(%struct.mg_connection* %5, i8* %6, %struct.file* %7)
  %9 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %10 = getelementptr inbounds %struct.file* %9, i32 0, i32 1
  %11 = load i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

; <label>:13                                      ; preds = %0
  %14 = load %struct.mg_connection** %1, align 8
  %15 = load i8** %2, align 8
  %16 = call i32* @__errno_location() nounwind readnone
  %17 = load i32* %16
  %18 = call i8* @strerror(i32 %17) nounwind
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %14, i32 405, i8* getelementptr inbounds ([19 x i8]* @.str212, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str213, i32 0, i32 0), i8* %15, i8* %18)
  br label %92

; <label>:19                                      ; preds = %0
  %20 = load %struct.mg_connection** %1, align 8
  %21 = getelementptr inbounds %struct.mg_connection* %20, i32 0, i32 14
  %22 = load i32* %21, align 4
  %23 = load %struct.mg_connection** %1, align 8
  %24 = getelementptr inbounds %struct.mg_connection* %23, i32 0, i32 13
  %25 = load i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  store i32 %26, i32* %body_len, align 4
  %27 = load i32* %body_len, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %35

; <label>:29                                      ; preds = %19
  %30 = load %struct.mg_connection** %1, align 8
  %31 = load i8** %2, align 8
  %32 = call i32* @__errno_location() nounwind readnone
  %33 = load i32* %32
  %34 = call i8* @strerror(i32 %33) nounwind
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %30, i32 415, i8* getelementptr inbounds ([23 x i8]* @.str214, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str213, i32 0, i32 0), i8* %31, i8* %34)
  br label %92

; <label>:35                                      ; preds = %19
  %36 = load i8** %2, align 8
  %37 = call i32 @mkdir(i8* %36, i32 493) nounwind
  store i32 %37, i32* %rc, align 4
  %38 = load i32* %rc, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

; <label>:40                                      ; preds = %35
  %41 = load %struct.mg_connection** %1, align 8
  %42 = getelementptr inbounds %struct.mg_connection* %41, i32 0, i32 15
  store i32 201, i32* %42, align 4
  %43 = load %struct.mg_connection** %1, align 8
  %44 = load %struct.mg_connection** %1, align 8
  %45 = getelementptr inbounds %struct.mg_connection* %44, i32 0, i32 15
  %46 = load i32* %45, align 4
  %47 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %43, i8* getelementptr inbounds ([24 x i8]* @.str215, i32 0, i32 0), i32 %46)
  br label %92

; <label>:48                                      ; preds = %35
  %49 = load i32* %rc, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %91

; <label>:51                                      ; preds = %48
  %52 = call i32* @__errno_location() nounwind readnone
  %53 = load i32* %52
  %54 = icmp eq i32 %53, 17
  br i1 %54, label %55, label %61

; <label>:55                                      ; preds = %51
  %56 = load %struct.mg_connection** %1, align 8
  %57 = load i8** %2, align 8
  %58 = call i32* @__errno_location() nounwind readnone
  %59 = load i32* %58
  %60 = call i8* @strerror(i32 %59) nounwind
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %56, i32 405, i8* getelementptr inbounds ([19 x i8]* @.str212, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str213, i32 0, i32 0), i8* %57, i8* %60)
  br label %90

; <label>:61                                      ; preds = %51
  %62 = call i32* @__errno_location() nounwind readnone
  %63 = load i32* %62
  %64 = icmp eq i32 %63, 13
  br i1 %64, label %65, label %71

; <label>:65                                      ; preds = %61
  %66 = load %struct.mg_connection** %1, align 8
  %67 = load i8** %2, align 8
  %68 = call i32* @__errno_location() nounwind readnone
  %69 = load i32* %68
  %70 = call i8* @strerror(i32 %69) nounwind
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %66, i32 403, i8* getelementptr inbounds ([10 x i8]* @.str216, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str213, i32 0, i32 0), i8* %67, i8* %70)
  br label %89

; <label>:71                                      ; preds = %61
  %72 = call i32* @__errno_location() nounwind readnone
  %73 = load i32* %72
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %81

; <label>:75                                      ; preds = %71
  %76 = load %struct.mg_connection** %1, align 8
  %77 = load i8** %2, align 8
  %78 = call i32* @__errno_location() nounwind readnone
  %79 = load i32* %78
  %80 = call i8* @strerror(i32 %79) nounwind
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %76, i32 409, i8* getelementptr inbounds ([9 x i8]* @.str217, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str213, i32 0, i32 0), i8* %77, i8* %80)
  br label %88

; <label>:81                                      ; preds = %71
  %82 = load %struct.mg_connection** %1, align 8
  %83 = load i8** @http_500_error, align 8
  %84 = load i8** %2, align 8
  %85 = call i32* @__errno_location() nounwind readnone
  %86 = load i32* %85
  %87 = call i8* @strerror(i32 %86) nounwind
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %82, i32 500, i8* %83, i8* getelementptr inbounds ([14 x i8]* @.str94, i32 0, i32 0), i8* %84, i8* %87)
  br label %88

; <label>:88                                      ; preds = %81, %75
  br label %89

; <label>:89                                      ; preds = %88, %65
  br label %90

; <label>:90                                      ; preds = %89, %55
  br label %91

; <label>:91                                      ; preds = %90, %48
  br label %92

; <label>:92                                      ; preds = %13, %29, %91, %40
  ret void
}

define internal i32 @remove_directory(%struct.mg_connection* %conn, i8* %dir) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca i8*, align 8
  %path = alloca [4096 x i8], align 16
  %dp = alloca %struct.dirent*, align 8
  %dirp = alloca %struct.__dirstream*, align 8
  %de = alloca %struct.de, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %2, align 8
  store i8* %dir, i8** %3, align 8
  %4 = load i8** %3, align 8
  %5 = call %struct.__dirstream* @opendir(i8* %4)
  store %struct.__dirstream* %5, %struct.__dirstream** %dirp, align 8
  %6 = icmp eq %struct.__dirstream* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store i32 0, i32* %1
  br label %66

; <label>:8                                       ; preds = %0
  %9 = load %struct.mg_connection** %2, align 8
  %10 = getelementptr inbounds %struct.de* %de, i32 0, i32 0
  store %struct.mg_connection* %9, %struct.mg_connection** %10, align 8
  br label %11

; <label>:11                                      ; preds = %59, %27, %8
  %12 = load %struct.__dirstream** %dirp, align 8
  %13 = call %struct.dirent* @readdir(%struct.__dirstream* %12)
  store %struct.dirent* %13, %struct.dirent** %dp, align 8
  %14 = icmp ne %struct.dirent* %13, null
  br i1 %14, label %15, label %60

; <label>:15                                      ; preds = %11
  %16 = load %struct.dirent** %dp, align 8
  %17 = getelementptr inbounds %struct.dirent* %16, i32 0, i32 4
  %18 = getelementptr inbounds [256 x i8]* %17, i32 0, i32 0
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([2 x i8]* @.str199, i32 0, i32 0)) nounwind readonly
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

; <label>:21                                      ; preds = %15
  %22 = load %struct.dirent** %dp, align 8
  %23 = getelementptr inbounds %struct.dirent* %22, i32 0, i32 4
  %24 = getelementptr inbounds [256 x i8]* %23, i32 0, i32 0
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([3 x i8]* @.str187, i32 0, i32 0)) nounwind readonly
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

; <label>:27                                      ; preds = %21, %15
  br label %11

; <label>:28                                      ; preds = %21
  %29 = load %struct.mg_connection** %2, align 8
  %30 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %31 = load i8** %3, align 8
  %32 = load %struct.dirent** %dp, align 8
  %33 = getelementptr inbounds %struct.dirent* %32, i32 0, i32 4
  %34 = getelementptr inbounds [256 x i8]* %33, i32 0, i32 0
  %35 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %29, i8* %30, i64 4096, i8* getelementptr inbounds ([7 x i8]* @.str107, i32 0, i32 0), i8* %31, i32 47, i8* %34)
  %36 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %37 = bitcast %struct.file* %36 to i8*
  call void @llvm.memset.p0i8.i64(i8* %37, i8 0, i64 48, i32 1, i1 false)
  %38 = load %struct.mg_connection** %2, align 8
  %39 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %40 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %41 = call i32 @mg_stat(%struct.mg_connection* %38, i8* %39, %struct.file* %40)
  %42 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %43 = getelementptr inbounds %struct.file* %42, i32 0, i32 1
  %44 = load i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %59

; <label>:46                                      ; preds = %28
  %47 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %48 = getelementptr inbounds %struct.file* %47, i32 0, i32 0
  %49 = load i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

; <label>:51                                      ; preds = %46
  %52 = load %struct.mg_connection** %2, align 8
  %53 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %54 = call i32 @remove_directory(%struct.mg_connection* %52, i8* %53)
  br label %58

; <label>:55                                      ; preds = %46
  %56 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %57 = call i32 @remove(i8* %56) nounwind
  br label %58

; <label>:58                                      ; preds = %55, %51
  br label %59

; <label>:59                                      ; preds = %58, %28
  br label %11

; <label>:60                                      ; preds = %11
  %61 = load %struct.__dirstream** %dirp, align 8
  %62 = call i32 @closedir(%struct.__dirstream* %61)
  %63 = load i8** %3, align 8
  %64 = call i32 @rmdir(i8* %63) nounwind
  br label %65

; <label>:65                                      ; preds = %60
  store i32 1, i32* %1
  br label %66

; <label>:66                                      ; preds = %65, %7
  %67 = load i32* %1
  ret i32 %67
}

define internal i32 @must_hide_file(%struct.mg_connection* %conn, i8* %path) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %pw_pattern = alloca i8*, align 8
  %pattern = alloca i8*, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %path, i8** %2, align 8
  store i8* getelementptr inbounds ([13 x i8]* @.str210, i32 0, i32 0), i8** %pw_pattern, align 8
  %3 = load %struct.mg_connection** %1, align 8
  %4 = getelementptr inbounds %struct.mg_connection* %3, i32 0, i32 1
  %5 = load %struct.mg_context** %4, align 8
  %6 = getelementptr inbounds %struct.mg_context* %5, i32 0, i32 2
  %7 = getelementptr inbounds [24 x i8*]* %6, i32 0, i64 22
  %8 = load i8** %7, align 8
  store i8* %8, i8** %pattern, align 8
  %9 = load i8** %pw_pattern, align 8
  %10 = load i8** %pw_pattern, align 8
  %11 = call i64 @strlen(i8* %10) nounwind readonly
  %12 = trunc i64 %11 to i32
  %13 = load i8** %2, align 8
  %14 = call i32 @match_prefix(i8* %9, i32 %12, i8* %13)
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %29, label %16

; <label>:16                                      ; preds = %0
  %17 = load i8** %pattern, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %27

; <label>:19                                      ; preds = %16
  %20 = load i8** %pattern, align 8
  %21 = load i8** %pattern, align 8
  %22 = call i64 @strlen(i8* %21) nounwind readonly
  %23 = trunc i64 %22 to i32
  %24 = load i8** %2, align 8
  %25 = call i32 @match_prefix(i8* %20, i32 %23, i8* %24)
  %26 = icmp sgt i32 %25, 0
  br label %27

; <label>:27                                      ; preds = %19, %16
  %28 = phi i1 [ false, %16 ], [ %26, %19 ]
  br label %29

; <label>:29                                      ; preds = %27, %0
  %30 = phi i1 [ true, %0 ], [ %28, %27 ]
  %31 = zext i1 %30 to i32
  ret i32 %31
}

define internal void @handle_propfind(%struct.mg_connection* %conn, i8* %path, %struct.file* %filep) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.file*, align 8
  %depth = alloca i8*, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %path, i8** %2, align 8
  store %struct.file* %filep, %struct.file** %3, align 8
  %4 = load %struct.mg_connection** %1, align 8
  %5 = call i8* @mg_get_header(%struct.mg_connection* %4, i8* getelementptr inbounds ([6 x i8]* @.str200, i32 0, i32 0))
  store i8* %5, i8** %depth, align 8
  %6 = load %struct.mg_connection** %1, align 8
  %7 = getelementptr inbounds %struct.mg_connection* %6, i32 0, i32 11
  store i32 1, i32* %7, align 4
  %8 = load %struct.mg_connection** %1, align 8
  %9 = getelementptr inbounds %struct.mg_connection* %8, i32 0, i32 15
  store i32 207, i32* %9, align 4
  %10 = load %struct.mg_connection** %1, align 8
  %11 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %10, i8* getelementptr inbounds ([88 x i8]* @.str201, i32 0, i32 0))
  %12 = load %struct.mg_connection** %1, align 8
  %13 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %12, i8* getelementptr inbounds ([70 x i8]* @.str202, i32 0, i32 0))
  %14 = sext i32 %13 to i64
  %15 = load %struct.mg_connection** %1, align 8
  %16 = getelementptr inbounds %struct.mg_connection* %15, i32 0, i32 6
  %17 = load i64* %16, align 8
  %18 = add nsw i64 %17, %14
  store i64 %18, i64* %16, align 8
  %19 = load %struct.mg_connection** %1, align 8
  %20 = load %struct.mg_connection** %1, align 8
  %21 = getelementptr inbounds %struct.mg_connection* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.mg_request_info* %21, i32 0, i32 1
  %23 = load i8** %22, align 8
  %24 = load %struct.file** %3, align 8
  call void @print_props(%struct.mg_connection* %19, i8* %23, %struct.file* %24)
  %25 = load %struct.file** %3, align 8
  %26 = getelementptr inbounds %struct.file* %25, i32 0, i32 0
  %27 = load i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %51

; <label>:29                                      ; preds = %0
  %30 = load %struct.mg_connection** %1, align 8
  %31 = getelementptr inbounds %struct.mg_connection* %30, i32 0, i32 1
  %32 = load %struct.mg_context** %31, align 8
  %33 = getelementptr inbounds %struct.mg_context* %32, i32 0, i32 2
  %34 = getelementptr inbounds [24 x i8*]* %33, i32 0, i64 9
  %35 = load i8** %34, align 8
  %36 = call i32 @mg_strcasecmp(i8* %35, i8* getelementptr inbounds ([4 x i8]* @.str37, i32 0, i32 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %51, label %38

; <label>:38                                      ; preds = %29
  %39 = load i8** %depth, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %45, label %41

; <label>:41                                      ; preds = %38
  %42 = load i8** %depth, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([2 x i8]* @.str203, i32 0, i32 0)) nounwind readonly
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

; <label>:45                                      ; preds = %41, %38
  %46 = load %struct.mg_connection** %1, align 8
  %47 = load i8** %2, align 8
  %48 = load %struct.mg_connection** %1, align 8
  %49 = bitcast %struct.mg_connection* %48 to i8*
  %50 = call i32 @scan_directory(%struct.mg_connection* %46, i8* %47, i8* %49, void (%struct.de*, i8*)* @print_dav_dir_entry)
  br label %51

; <label>:51                                      ; preds = %45, %41, %29, %0
  %52 = load %struct.mg_connection** %1, align 8
  %53 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %52, i8* getelementptr inbounds ([4 x i8]* @.str204, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str205, i32 0, i32 0))
  %54 = sext i32 %53 to i64
  %55 = load %struct.mg_connection** %1, align 8
  %56 = getelementptr inbounds %struct.mg_connection* %55, i32 0, i32 6
  %57 = load i64* %56, align 8
  %58 = add nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  ret void
}

define internal i32 @substitute_index_file(%struct.mg_connection* %conn, i8* %path, i64 %path_len, %struct.file* %filep) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.file*, align 8
  %list = alloca i8*, align 8
  %file = alloca %struct.file, align 8
  %filename_vec = alloca %struct.vec, align 8
  %n = alloca i64, align 8
  %found = alloca i32, align 4
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %path, i8** %2, align 8
  store i64 %path_len, i64* %3, align 8
  store %struct.file* %filep, %struct.file** %4, align 8
  %5 = load %struct.mg_connection** %1, align 8
  %6 = getelementptr inbounds %struct.mg_connection* %5, i32 0, i32 1
  %7 = load %struct.mg_context** %6, align 8
  %8 = getelementptr inbounds %struct.mg_context* %7, i32 0, i32 2
  %9 = getelementptr inbounds [24 x i8*]* %8, i32 0, i64 12
  %10 = load i8** %9, align 8
  store i8* %10, i8** %list, align 8
  %11 = bitcast %struct.file* %file to i8*
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 48, i32 8, i1 false)
  %12 = bitcast i8* %11 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %13 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %12, i32 0, i32 6
  %14 = load i8** %2, align 8
  %15 = call i64 @strlen(i8* %14) nounwind readonly
  store i64 %15, i64* %n, align 8
  store i32 0, i32* %found, align 4
  br label %16

; <label>:16                                      ; preds = %29, %0
  %17 = load i64* %n, align 8
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %19, label %27

; <label>:19                                      ; preds = %16
  %20 = load i64* %n, align 8
  %21 = sub i64 %20, 1
  %22 = load i8** %2, align 8
  %23 = getelementptr inbounds i8* %22, i64 %21
  %24 = load i8* %23
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 47
  br label %27

; <label>:27                                      ; preds = %19, %16
  %28 = phi i1 [ false, %16 ], [ %26, %19 ]
  br i1 %28, label %29, label %32

; <label>:29                                      ; preds = %27
  %30 = load i64* %n, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %n, align 8
  br label %16

; <label>:32                                      ; preds = %27
  %33 = load i64* %n, align 8
  %34 = load i8** %2, align 8
  %35 = getelementptr inbounds i8* %34, i64 %33
  store i8 47, i8* %35
  br label %36

; <label>:36                                      ; preds = %67, %48, %32
  %37 = load i8** %list, align 8
  %38 = call i8* @next_option(i8* %37, %struct.vec* %filename_vec, %struct.vec* null)
  store i8* %38, i8** %list, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %68

; <label>:40                                      ; preds = %36
  %41 = getelementptr inbounds %struct.vec* %filename_vec, i32 0, i32 1
  %42 = load i64* %41, align 8
  %43 = load i64* %3, align 8
  %44 = load i64* %n, align 8
  %45 = add i64 %44, 2
  %46 = sub i64 %43, %45
  %47 = icmp ugt i64 %42, %46
  br i1 %47, label %48, label %49

; <label>:48                                      ; preds = %40
  br label %36

; <label>:49                                      ; preds = %40
  %50 = load i8** %2, align 8
  %51 = load i64* %n, align 8
  %52 = getelementptr inbounds i8* %50, i64 %51
  %53 = getelementptr inbounds i8* %52, i64 1
  %54 = getelementptr inbounds %struct.vec* %filename_vec, i32 0, i32 0
  %55 = load i8** %54, align 8
  %56 = getelementptr inbounds %struct.vec* %filename_vec, i32 0, i32 1
  %57 = load i64* %56, align 8
  %58 = add i64 %57, 1
  call void @mg_strlcpy(i8* %53, i8* %55, i64 %58)
  %59 = load %struct.mg_connection** %1, align 8
  %60 = load i8** %2, align 8
  %61 = call i32 @mg_stat(%struct.mg_connection* %59, i8* %60, %struct.file* %file)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

; <label>:63                                      ; preds = %49
  %64 = load %struct.file** %4, align 8
  %65 = bitcast %struct.file* %64 to i8*
  %66 = bitcast %struct.file* %file to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 48, i32 8, i1 false)
  store i32 1, i32* %found, align 4
  br label %68

; <label>:67                                      ; preds = %49
  br label %36

; <label>:68                                      ; preds = %63, %36
  %69 = load i32* %found, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

; <label>:71                                      ; preds = %68
  %72 = load i64* %n, align 8
  %73 = load i8** %2, align 8
  %74 = getelementptr inbounds i8* %73, i64 %72
  store i8 0, i8* %74
  br label %75

; <label>:75                                      ; preds = %71, %68
  %76 = load i32* %found, align 4
  ret i32 %76
}

define internal void @handle_directory_request(%struct.mg_connection* %conn, i8* %dir) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %i = alloca i32, align 4
  %sort_direction = alloca i32, align 4
  %data = alloca %struct.dir_scan_data, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %dir, i8** %2, align 8
  %3 = bitcast %struct.dir_scan_data* %data to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct.dir_scan_data* @handle_directory_request.data to i8*), i64 16, i32 8, i1 false)
  %4 = load %struct.mg_connection** %1, align 8
  %5 = load i8** %2, align 8
  %6 = bitcast %struct.dir_scan_data* %data to i8*
  %7 = call i32 @scan_directory(%struct.mg_connection* %4, i8* %5, i8* %6, void (%struct.de*, i8*)* @dir_scan_callback)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

; <label>:9                                       ; preds = %0
  %10 = load %struct.mg_connection** %1, align 8
  %11 = load i8** %2, align 8
  %12 = call i32* @__errno_location() nounwind readnone
  %13 = load i32* %12
  %14 = call i8* @strerror(i32 %13) nounwind
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %10, i32 500, i8* getelementptr inbounds ([22 x i8]* @.str182, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str183, i32 0, i32 0), i8* %11, i8* %14)
  br label %113

; <label>:15                                      ; preds = %0
  %16 = load %struct.mg_connection** %1, align 8
  %17 = getelementptr inbounds %struct.mg_connection* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.mg_request_info* %17, i32 0, i32 3
  %19 = load i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %30

; <label>:21                                      ; preds = %15
  %22 = load %struct.mg_connection** %1, align 8
  %23 = getelementptr inbounds %struct.mg_connection* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.mg_request_info* %23, i32 0, i32 3
  %25 = load i8** %24, align 8
  %26 = getelementptr inbounds i8* %25, i64 1
  %27 = load i8* %26
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 100
  br label %30

; <label>:30                                      ; preds = %21, %15
  %31 = phi i1 [ false, %15 ], [ %29, %21 ]
  %32 = select i1 %31, i32 97, i32 100
  store i32 %32, i32* %sort_direction, align 4
  %33 = load %struct.mg_connection** %1, align 8
  %34 = getelementptr inbounds %struct.mg_connection* %33, i32 0, i32 11
  store i32 1, i32* %34, align 4
  %35 = load %struct.mg_connection** %1, align 8
  %36 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %35, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8]* @.str184, i32 0, i32 0))
  %37 = load %struct.mg_connection** %1, align 8
  %38 = load %struct.mg_connection** %1, align 8
  %39 = getelementptr inbounds %struct.mg_connection* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.mg_request_info* %39, i32 0, i32 1
  %41 = load i8** %40, align 8
  %42 = load %struct.mg_connection** %1, align 8
  %43 = getelementptr inbounds %struct.mg_connection* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.mg_request_info* %43, i32 0, i32 1
  %45 = load i8** %44, align 8
  %46 = load i32* %sort_direction, align 4
  %47 = load i32* %sort_direction, align 4
  %48 = load i32* %sort_direction, align 4
  %49 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_chunked_printf(%struct.mg_connection* %37, i8* getelementptr inbounds ([280 x i8]* @.str185, i32 0, i32 0), i8* %41, i8* %45, i32 %46, i32 %47, i32 %48)
  %50 = sext i32 %49 to i64
  %51 = load %struct.mg_connection** %1, align 8
  %52 = getelementptr inbounds %struct.mg_connection* %51, i32 0, i32 6
  %53 = load i64* %52, align 8
  %54 = add nsw i64 %53, %50
  store i64 %54, i64* %52, align 8
  %55 = load %struct.mg_connection** %1, align 8
  %56 = load %struct.mg_connection** %1, align 8
  %57 = getelementptr inbounds %struct.mg_connection* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.mg_request_info* %57, i32 0, i32 1
  %59 = load i8** %58, align 8
  %60 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_chunked_printf(%struct.mg_connection* %55, i8* getelementptr inbounds ([81 x i8]* @.str186, i32 0, i32 0), i8* %59, i8* getelementptr inbounds ([3 x i8]* @.str187, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str188, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str52, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str52, i32 0, i32 0))
  %61 = sext i32 %60 to i64
  %62 = load %struct.mg_connection** %1, align 8
  %63 = getelementptr inbounds %struct.mg_connection* %62, i32 0, i32 6
  %64 = load i64* %63, align 8
  %65 = add nsw i64 %64, %61
  store i64 %65, i64* %63, align 8
  %66 = getelementptr inbounds %struct.dir_scan_data* %data, i32 0, i32 0
  %67 = load %struct.de** %66, align 8
  %68 = bitcast %struct.de* %67 to i8*
  %69 = getelementptr inbounds %struct.dir_scan_data* %data, i32 0, i32 1
  %70 = load i32* %69, align 4
  %71 = sext i32 %70 to i64
  call void @qsort(i8* %68, i64 %71, i64 64, i32 (i8*, i8*)* @compare_dir_entries)
  store i32 0, i32* %i, align 4
  br label %72

; <label>:72                                      ; preds = %90, %30
  %73 = load i32* %i, align 4
  %74 = getelementptr inbounds %struct.dir_scan_data* %data, i32 0, i32 1
  %75 = load i32* %74, align 4
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %93

; <label>:77                                      ; preds = %72
  %78 = load i32* %i, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.dir_scan_data* %data, i32 0, i32 0
  %81 = load %struct.de** %80, align 8
  %82 = getelementptr inbounds %struct.de* %81, i64 %79
  call void @print_dir_entry(%struct.de* %82)
  %83 = load i32* %i, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.dir_scan_data* %data, i32 0, i32 0
  %86 = load %struct.de** %85, align 8
  %87 = getelementptr inbounds %struct.de* %86, i64 %84
  %88 = getelementptr inbounds %struct.de* %87, i32 0, i32 1
  %89 = load i8** %88, align 8
  call void @free(i8* %89) nounwind
  br label %90

; <label>:90                                      ; preds = %77
  %91 = load i32* %i, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %i, align 4
  br label %72

; <label>:93                                      ; preds = %72
  %94 = getelementptr inbounds %struct.dir_scan_data* %data, i32 0, i32 0
  %95 = load %struct.de** %94, align 8
  %96 = bitcast %struct.de* %95 to i8*
  call void @free(i8* %96) nounwind
  %97 = load %struct.mg_connection** %1, align 8
  %98 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_chunked_printf(%struct.mg_connection* %97, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str189, i32 0, i32 0))
  %99 = sext i32 %98 to i64
  %100 = load %struct.mg_connection** %1, align 8
  %101 = getelementptr inbounds %struct.mg_connection* %100, i32 0, i32 6
  %102 = load i64* %101, align 8
  %103 = add nsw i64 %102, %99
  store i64 %103, i64* %101, align 8
  %104 = load %struct.mg_connection** %1, align 8
  %105 = call i32 @mg_write(%struct.mg_connection* %104, i8* getelementptr inbounds ([6 x i8]* @.str190, i32 0, i32 0), i64 5)
  %106 = sext i32 %105 to i64
  %107 = load %struct.mg_connection** %1, align 8
  %108 = getelementptr inbounds %struct.mg_connection* %107, i32 0, i32 6
  %109 = load i64* %108, align 8
  %110 = add nsw i64 %109, %106
  store i64 %110, i64* %108, align 8
  %111 = load %struct.mg_connection** %1, align 8
  %112 = getelementptr inbounds %struct.mg_connection* %111, i32 0, i32 15
  store i32 200, i32* %112, align 4
  br label %113

; <label>:113                                     ; preds = %93, %9
  ret void
}

define internal i32 @match_prefix(i8* %pattern, i32 %pattern_len, i8* %str) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %or_str = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  %res = alloca i32, align 4
  store i8* %pattern, i8** %2, align 8
  store i32 %pattern_len, i32* %3, align 4
  store i8* %str, i8** %4, align 8
  %5 = load i8** %2, align 8
  %6 = load i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = call i8* @memchr(i8* %5, i32 124, i64 %7) nounwind readonly
  store i8* %8, i8** %or_str, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %41

; <label>:10                                      ; preds = %0
  %11 = load i8** %2, align 8
  %12 = load i8** %or_str, align 8
  %13 = load i8** %2, align 8
  %14 = ptrtoint i8* %12 to i64
  %15 = ptrtoint i8* %13 to i64
  %16 = sub i64 %14, %15
  %17 = trunc i64 %16 to i32
  %18 = load i8** %4, align 8
  %19 = call i32 @match_prefix(i8* %11, i32 %17, i8* %18)
  store i32 %19, i32* %res, align 4
  %20 = load i32* %res, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %24

; <label>:22                                      ; preds = %10
  %23 = load i32* %res, align 4
  br label %39

; <label>:24                                      ; preds = %10
  %25 = load i8** %or_str, align 8
  %26 = getelementptr inbounds i8* %25, i64 1
  %27 = load i8** %2, align 8
  %28 = load i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8* %27, i64 %29
  %31 = load i8** %or_str, align 8
  %32 = getelementptr inbounds i8* %31, i64 1
  %33 = ptrtoint i8* %30 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  %37 = load i8** %4, align 8
  %38 = call i32 @match_prefix(i8* %26, i32 %36, i8* %37)
  br label %39

; <label>:39                                      ; preds = %24, %22
  %40 = phi i32 [ %23, %22 ], [ %38, %24 ]
  store i32 %40, i32* %1
  br label %188

; <label>:41                                      ; preds = %0
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  store i32 -1, i32* %res, align 4
  br label %42

; <label>:42                                      ; preds = %181, %41
  %43 = load i32* %i, align 4
  %44 = load i32* %3, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %186

; <label>:46                                      ; preds = %42
  %47 = load i32* %i, align 4
  %48 = sext i32 %47 to i64
  %49 = load i8** %2, align 8
  %50 = getelementptr inbounds i8* %49, i64 %48
  %51 = load i8* %50
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 63
  br i1 %53, label %54, label %63

; <label>:54                                      ; preds = %46
  %55 = load i32* %j, align 4
  %56 = sext i32 %55 to i64
  %57 = load i8** %4, align 8
  %58 = getelementptr inbounds i8* %57, i64 %56
  %59 = load i8* %58
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

; <label>:62                                      ; preds = %54
  br label %181

; <label>:63                                      ; preds = %54, %46
  %64 = load i32* %i, align 4
  %65 = sext i32 %64 to i64
  %66 = load i8** %2, align 8
  %67 = getelementptr inbounds i8* %66, i64 %65
  %68 = load i8* %67
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 36
  br i1 %70, label %71, label %84

; <label>:71                                      ; preds = %63
  %72 = load i32* %j, align 4
  %73 = sext i32 %72 to i64
  %74 = load i8** %4, align 8
  %75 = getelementptr inbounds i8* %74, i64 %73
  %76 = load i8* %75
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

; <label>:79                                      ; preds = %71
  %80 = load i32* %j, align 4
  br label %82

; <label>:81                                      ; preds = %71
  br label %82

; <label>:82                                      ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ -1, %81 ]
  store i32 %83, i32* %1
  br label %188

; <label>:84                                      ; preds = %63
  %85 = load i32* %i, align 4
  %86 = sext i32 %85 to i64
  %87 = load i8** %2, align 8
  %88 = getelementptr inbounds i8* %87, i64 %86
  %89 = load i8* %88
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 42
  br i1 %91, label %92, label %164

; <label>:92                                      ; preds = %84
  %93 = load i32* %i, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %i, align 4
  %95 = load i32* %i, align 4
  %96 = sext i32 %95 to i64
  %97 = load i8** %2, align 8
  %98 = getelementptr inbounds i8* %97, i64 %96
  %99 = load i8* %98
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 42
  br i1 %101, label %102, label %111

; <label>:102                                     ; preds = %92
  %103 = load i32* %i, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %i, align 4
  %105 = load i8** %4, align 8
  %106 = load i32* %j, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8* %105, i64 %107
  %109 = call i64 @strlen(i8* %108) nounwind readonly
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %len, align 4
  br label %118

; <label>:111                                     ; preds = %92
  %112 = load i8** %4, align 8
  %113 = load i32* %j, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8* %112, i64 %114
  %116 = call i64 @strcspn(i8* %115, i8* getelementptr inbounds ([2 x i8]* @.str181, i32 0, i32 0)) nounwind readonly
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %len, align 4
  br label %118

; <label>:118                                     ; preds = %111, %102
  %119 = load i32* %i, align 4
  %120 = load i32* %3, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %126

; <label>:122                                     ; preds = %118
  %123 = load i32* %j, align 4
  %124 = load i32* %len, align 4
  %125 = add nsw i32 %123, %124
  store i32 %125, i32* %1
  br label %188

; <label>:126                                     ; preds = %118
  br label %127

; <label>:127                                     ; preds = %150, %126
  %128 = load i8** %2, align 8
  %129 = load i32* %i, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8* %128, i64 %130
  %132 = load i32* %3, align 4
  %133 = load i32* %i, align 4
  %134 = sub nsw i32 %132, %133
  %135 = load i8** %4, align 8
  %136 = load i32* %j, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8* %135, i64 %137
  %139 = load i32* %len, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8* %138, i64 %140
  %142 = call i32 @match_prefix(i8* %131, i32 %134, i8* %141)
  store i32 %142, i32* %res, align 4
  br label %143

; <label>:143                                     ; preds = %127
  %144 = load i32* %res, align 4
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %146, label %150

; <label>:146                                     ; preds = %143
  %147 = load i32* %len, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %len, align 4
  %149 = icmp sgt i32 %147, 0
  br label %150

; <label>:150                                     ; preds = %146, %143
  %151 = phi i1 [ false, %143 ], [ %149, %146 ]
  br i1 %151, label %127, label %152

; <label>:152                                     ; preds = %150
  %153 = load i32* %res, align 4
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %155, label %156

; <label>:155                                     ; preds = %152
  br label %162

; <label>:156                                     ; preds = %152
  %157 = load i32* %j, align 4
  %158 = load i32* %res, align 4
  %159 = add nsw i32 %157, %158
  %160 = load i32* %len, align 4
  %161 = add nsw i32 %159, %160
  br label %162

; <label>:162                                     ; preds = %156, %155
  %163 = phi i32 [ -1, %155 ], [ %161, %156 ]
  store i32 %163, i32* %1
  br label %188

; <label>:164                                     ; preds = %84
  %165 = load i32* %i, align 4
  %166 = sext i32 %165 to i64
  %167 = load i8** %2, align 8
  %168 = getelementptr inbounds i8* %167, i64 %166
  %169 = call i32 @lowercase(i8* %168)
  %170 = load i32* %j, align 4
  %171 = sext i32 %170 to i64
  %172 = load i8** %4, align 8
  %173 = getelementptr inbounds i8* %172, i64 %171
  %174 = call i32 @lowercase(i8* %173)
  %175 = icmp ne i32 %169, %174
  br i1 %175, label %176, label %177

; <label>:176                                     ; preds = %164
  store i32 -1, i32* %1
  br label %188

; <label>:177                                     ; preds = %164
  br label %178

; <label>:178                                     ; preds = %177
  br label %179

; <label>:179                                     ; preds = %178
  br label %180

; <label>:180                                     ; preds = %179
  br label %181

; <label>:181                                     ; preds = %180, %62
  %182 = load i32* %i, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %i, align 4
  %184 = load i32* %j, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %j, align 4
  br label %42

; <label>:186                                     ; preds = %42
  %187 = load i32* %j, align 4
  store i32 %187, i32* %1
  br label %188

; <label>:188                                     ; preds = %186, %176, %162, %122, %82, %39
  %189 = load i32* %1
  ret i32 %189
}

define internal void @handle_cgi_request(%struct.mg_connection* %conn, i8* %prog) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %headers_len = alloca i32, align 4
  %data_len = alloca i32, align 4
  %i = alloca i32, align 4
  %fdin = alloca [2 x i32], align 4
  %fdout = alloca [2 x i32], align 4
  %status = alloca i8*, align 8
  %status_text = alloca i8*, align 8
  %buf = alloca [16384 x i8], align 16
  %pbuf = alloca i8*, align 8
  %dir = alloca [4096 x i8], align 16
  %p = alloca i8*, align 8
  %ri = alloca %struct.mg_request_info, align 8
  %blk = alloca %struct.cgi_env_block, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %out = alloca %struct._IO_FILE*, align 8
  %fout = alloca %struct.file, align 8
  %pid = alloca i32, align 4
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %prog, i8** %2, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %in, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %out, align 8
  %3 = bitcast %struct.file* %fout to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 48, i32 8, i1 false)
  %4 = bitcast i8* %3 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %5 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %4, i32 0, i32 6
  store i32 -1, i32* %pid, align 4
  %6 = load %struct.mg_connection** %1, align 8
  %7 = load i8** %2, align 8
  call void @prepare_cgi_environment(%struct.mg_connection* %6, i8* %7, %struct.cgi_env_block* %blk)
  %8 = load %struct.mg_connection** %1, align 8
  %9 = getelementptr inbounds [4096 x i8]* %dir, i32 0, i32 0
  %10 = load i8** %2, align 8
  %11 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %8, i8* %9, i64 4096, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* %10)
  %12 = getelementptr inbounds [4096 x i8]* %dir, i32 0, i32 0
  %13 = call i8* @strrchr(i8* %12, i32 47) nounwind readonly
  store i8* %13, i8** %p, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %0
  %16 = load i8** %p, align 8
  %17 = getelementptr inbounds i8* %16, i32 1
  store i8* %17, i8** %p, align 8
  store i8 0, i8* %16
  br label %22

; <label>:18                                      ; preds = %0
  %19 = getelementptr inbounds [4096 x i8]* %dir, i32 0, i64 0
  store i8 46, i8* %19, align 1
  %20 = getelementptr inbounds [4096 x i8]* %dir, i32 0, i64 1
  store i8 0, i8* %20, align 1
  %21 = load i8** %2, align 8
  store i8* %21, i8** %p, align 8
  br label %22

; <label>:22                                      ; preds = %18, %15
  %23 = getelementptr inbounds [2 x i32]* %fdin, i32 0, i32 0
  %24 = call i32 @pipe(i32* %23) nounwind
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

; <label>:26                                      ; preds = %22
  %27 = getelementptr inbounds [2 x i32]* %fdout, i32 0, i32 0
  %28 = call i32 @pipe(i32* %27) nounwind
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

; <label>:30                                      ; preds = %26, %22
  %31 = load %struct.mg_connection** %1, align 8
  %32 = load i8** @http_500_error, align 8
  %33 = call i32* @__errno_location() nounwind readnone
  %34 = load i32* %33
  %35 = call i8* @strerror(i32 %34) nounwind
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %31, i32 500, i8* %32, i8* getelementptr inbounds ([27 x i8]* @.str114, i32 0, i32 0), i8* %35)
  br label %228

; <label>:36                                      ; preds = %26
  %37 = load %struct.mg_connection** %1, align 8
  %38 = load i8** %p, align 8
  %39 = getelementptr inbounds %struct.cgi_env_block* %blk, i32 0, i32 1
  %40 = getelementptr inbounds [4096 x i8]* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.cgi_env_block* %blk, i32 0, i32 3
  %42 = getelementptr inbounds [64 x i8*]* %41, i32 0, i32 0
  %43 = getelementptr inbounds [2 x i32]* %fdin, i32 0, i64 0
  %44 = load i32* %43, align 4
  %45 = getelementptr inbounds [2 x i32]* %fdout, i32 0, i64 1
  %46 = load i32* %45, align 4
  %47 = getelementptr inbounds [4096 x i8]* %dir, i32 0, i32 0
  %48 = call i32 @spawn_process(%struct.mg_connection* %37, i8* %38, i8* %40, i8** %42, i32 %44, i32 %46, i8* %47)
  store i32 %48, i32* %pid, align 4
  %49 = load i32* %pid, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %58

; <label>:51                                      ; preds = %36
  %52 = load %struct.mg_connection** %1, align 8
  %53 = load i8** @http_500_error, align 8
  %54 = load i8** %2, align 8
  %55 = call i32* @__errno_location() nounwind readnone
  %56 = load i32* %55
  %57 = call i8* @strerror(i32 %56) nounwind
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %52, i32 500, i8* %53, i8* getelementptr inbounds ([34 x i8]* @.str115, i32 0, i32 0), i8* %54, i8* %57)
  br label %228

; <label>:58                                      ; preds = %36
  %59 = getelementptr inbounds [2 x i32]* %fdin, i32 0, i64 0
  %60 = load i32* %59, align 4
  call void @set_close_on_exec(i32 %60)
  %61 = getelementptr inbounds [2 x i32]* %fdin, i32 0, i64 1
  %62 = load i32* %61, align 4
  call void @set_close_on_exec(i32 %62)
  %63 = getelementptr inbounds [2 x i32]* %fdout, i32 0, i64 0
  %64 = load i32* %63, align 4
  call void @set_close_on_exec(i32 %64)
  %65 = getelementptr inbounds [2 x i32]* %fdout, i32 0, i64 1
  %66 = load i32* %65, align 4
  call void @set_close_on_exec(i32 %66)
  %67 = getelementptr inbounds [2 x i32]* %fdin, i32 0, i64 0
  %68 = load i32* %67, align 4
  %69 = call i32 @close(i32 %68)
  %70 = getelementptr inbounds [2 x i32]* %fdout, i32 0, i64 1
  %71 = load i32* %70, align 4
  %72 = call i32 @close(i32 %71)
  %73 = getelementptr inbounds [2 x i32]* %fdout, i32 0, i64 1
  store i32 -1, i32* %73, align 4
  %74 = getelementptr inbounds [2 x i32]* %fdin, i32 0, i64 0
  store i32 -1, i32* %74, align 4
  %75 = getelementptr inbounds [2 x i32]* %fdin, i32 0, i64 1
  %76 = load i32* %75, align 4
  %77 = call %struct._IO_FILE* @fdopen(i32 %76, i8* getelementptr inbounds ([3 x i8]* @.str26, i32 0, i32 0)) nounwind
  store %struct._IO_FILE* %77, %struct._IO_FILE** %in, align 8
  %78 = icmp eq %struct._IO_FILE* %77, null
  br i1 %78, label %84, label %79

; <label>:79                                      ; preds = %58
  %80 = getelementptr inbounds [2 x i32]* %fdout, i32 0, i64 0
  %81 = load i32* %80, align 4
  %82 = call %struct._IO_FILE* @fdopen(i32 %81, i8* getelementptr inbounds ([3 x i8]* @.str93, i32 0, i32 0)) nounwind
  store %struct._IO_FILE* %82, %struct._IO_FILE** %out, align 8
  %83 = icmp eq %struct._IO_FILE* %82, null
  br i1 %83, label %84, label %90

; <label>:84                                      ; preds = %79, %58
  %85 = load %struct.mg_connection** %1, align 8
  %86 = load i8** @http_500_error, align 8
  %87 = call i32* @__errno_location() nounwind readnone
  %88 = load i32* %87
  %89 = call i8* @strerror(i32 %88) nounwind
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %85, i32 500, i8* %86, i8* getelementptr inbounds ([10 x i8]* @.str116, i32 0, i32 0), i8* %89)
  br label %228

; <label>:90                                      ; preds = %79
  %91 = load %struct._IO_FILE** %in, align 8
  call void @setbuf(%struct._IO_FILE* %91, i8* null) nounwind
  %92 = load %struct._IO_FILE** %out, align 8
  call void @setbuf(%struct._IO_FILE* %92, i8* null) nounwind
  %93 = load %struct._IO_FILE** %out, align 8
  %94 = getelementptr inbounds %struct.file* %fout, i32 0, i32 3
  store %struct._IO_FILE* %93, %struct._IO_FILE** %94, align 8
  %95 = load %struct.mg_connection** %1, align 8
  %96 = getelementptr inbounds %struct.mg_connection* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.mg_request_info* %96, i32 0, i32 0
  %98 = load i8** %97, align 8
  %99 = call i32 @strcmp(i8* %98, i8* getelementptr inbounds ([5 x i8]* @.str68, i32 0, i32 0)) nounwind readonly
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

; <label>:101                                     ; preds = %90
  %102 = load %struct.mg_connection** %1, align 8
  %103 = load %struct._IO_FILE** %in, align 8
  %104 = call i32 @forward_body_data(%struct.mg_connection* %102, %struct._IO_FILE* %103, i32 -1, %struct.ssl_st* null)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

; <label>:106                                     ; preds = %101
  br label %228

; <label>:107                                     ; preds = %101, %90
  %108 = load %struct._IO_FILE** %in, align 8
  %109 = call i32 @fclose(%struct._IO_FILE* %108)
  store %struct._IO_FILE* null, %struct._IO_FILE** %in, align 8
  %110 = getelementptr inbounds [2 x i32]* %fdin, i32 0, i64 1
  store i32 -1, i32* %110, align 4
  store i32 0, i32* %data_len, align 4
  %111 = load %struct._IO_FILE** %out, align 8
  %112 = load %struct.mg_connection** %1, align 8
  %113 = getelementptr inbounds [16384 x i8]* %buf, i32 0, i32 0
  %114 = call i32 @read_request(%struct._IO_FILE* %111, %struct.mg_connection* %112, i8* %113, i32 16384, i32* %data_len)
  store i32 %114, i32* %headers_len, align 4
  %115 = load i32* %headers_len, align 4
  %116 = icmp sle i32 %115, 0
  br i1 %116, label %117, label %122

; <label>:117                                     ; preds = %107
  %118 = load %struct.mg_connection** %1, align 8
  %119 = load i8** @http_500_error, align 8
  %120 = load i32* %data_len, align 4
  %121 = getelementptr inbounds [16384 x i8]* %buf, i32 0, i32 0
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %118, i32 500, i8* %119, i8* getelementptr inbounds ([71 x i8]* @.str117, i32 0, i32 0), i32 16384, i32 %120, i8* %121)
  br label %228

; <label>:122                                     ; preds = %107
  %123 = getelementptr inbounds [16384 x i8]* %buf, i32 0, i32 0
  store i8* %123, i8** %pbuf, align 8
  %124 = load i32* %headers_len, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [16384 x i8]* %buf, i32 0, i64 %126
  store i8 0, i8* %127, align 1
  call void @parse_http_headers(i8** %pbuf, %struct.mg_request_info* %ri)
  store i8* getelementptr inbounds ([3 x i8]* @.str118, i32 0, i32 0), i8** %status_text, align 8
  %128 = call i8* @get_header(%struct.mg_request_info* %ri, i8* getelementptr inbounds ([7 x i8]* @.str119, i32 0, i32 0))
  store i8* %128, i8** %status, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %159

; <label>:130                                     ; preds = %122
  %131 = load i8** %status, align 8
  %132 = call i32 @atoi(i8* %131) nounwind readonly
  %133 = load %struct.mg_connection** %1, align 8
  %134 = getelementptr inbounds %struct.mg_connection* %133, i32 0, i32 15
  store i32 %132, i32* %134, align 4
  %135 = load i8** %status, align 8
  store i8* %135, i8** %status_text, align 8
  br label %136

; <label>:136                                     ; preds = %155, %130
  %137 = load i8** %status_text, align 8
  %138 = load i8* %137
  %139 = zext i8 %138 to i32
  %140 = sext i32 %139 to i64
  %141 = call i16** @__ctype_b_loc() nounwind readnone
  %142 = load i16** %141
  %143 = getelementptr inbounds i16* %142, i64 %140
  %144 = load i16* %143
  %145 = zext i16 %144 to i32
  %146 = and i32 %145, 2048
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %153, label %148

; <label>:148                                     ; preds = %136
  %149 = load i8** %status_text, align 8
  %150 = load i8* %149
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 32
  br label %153

; <label>:153                                     ; preds = %148, %136
  %154 = phi i1 [ true, %136 ], [ %152, %148 ]
  br i1 %154, label %155, label %158

; <label>:155                                     ; preds = %153
  %156 = load i8** %status_text, align 8
  %157 = getelementptr inbounds i8* %156, i32 1
  store i8* %157, i8** %status_text, align 8
  br label %136

; <label>:158                                     ; preds = %153
  br label %169

; <label>:159                                     ; preds = %122
  %160 = call i8* @get_header(%struct.mg_request_info* %ri, i8* getelementptr inbounds ([9 x i8]* @.str120, i32 0, i32 0))
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %165

; <label>:162                                     ; preds = %159
  %163 = load %struct.mg_connection** %1, align 8
  %164 = getelementptr inbounds %struct.mg_connection* %163, i32 0, i32 15
  store i32 302, i32* %164, align 4
  br label %168

; <label>:165                                     ; preds = %159
  %166 = load %struct.mg_connection** %1, align 8
  %167 = getelementptr inbounds %struct.mg_connection* %166, i32 0, i32 15
  store i32 200, i32* %167, align 4
  br label %168

; <label>:168                                     ; preds = %165, %162
  br label %169

; <label>:169                                     ; preds = %168, %158
  %170 = call i8* @get_header(%struct.mg_request_info* %ri, i8* getelementptr inbounds ([11 x i8]* @.str48, i32 0, i32 0))
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %179

; <label>:172                                     ; preds = %169
  %173 = call i8* @get_header(%struct.mg_request_info* %ri, i8* getelementptr inbounds ([11 x i8]* @.str48, i32 0, i32 0))
  %174 = call i32 @mg_strcasecmp(i8* %173, i8* getelementptr inbounds ([11 x i8]* @.str49, i32 0, i32 0))
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

; <label>:176                                     ; preds = %172
  %177 = load %struct.mg_connection** %1, align 8
  %178 = getelementptr inbounds %struct.mg_connection* %177, i32 0, i32 11
  store i32 1, i32* %178, align 4
  br label %179

; <label>:179                                     ; preds = %176, %172, %169
  %180 = load %struct.mg_connection** %1, align 8
  %181 = load %struct.mg_connection** %1, align 8
  %182 = getelementptr inbounds %struct.mg_connection* %181, i32 0, i32 15
  %183 = load i32* %182, align 4
  %184 = load i8** %status_text, align 8
  %185 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %180, i8* getelementptr inbounds ([17 x i8]* @.str121, i32 0, i32 0), i32 %183, i8* %184)
  store i32 0, i32* %i, align 4
  br label %186

; <label>:186                                     ; preds = %206, %179
  %187 = load i32* %i, align 4
  %188 = getelementptr inbounds %struct.mg_request_info* %ri, i32 0, i32 10
  %189 = load i32* %188, align 4
  %190 = icmp slt i32 %187, %189
  br i1 %190, label %191, label %209

; <label>:191                                     ; preds = %186
  %192 = load %struct.mg_connection** %1, align 8
  %193 = load i32* %i, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.mg_request_info* %ri, i32 0, i32 11
  %196 = getelementptr inbounds [64 x %struct.mg_header]* %195, i32 0, i64 %194
  %197 = getelementptr inbounds %struct.mg_header* %196, i32 0, i32 0
  %198 = load i8** %197, align 8
  %199 = load i32* %i, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.mg_request_info* %ri, i32 0, i32 11
  %202 = getelementptr inbounds [64 x %struct.mg_header]* %201, i32 0, i64 %200
  %203 = getelementptr inbounds %struct.mg_header* %202, i32 0, i32 1
  %204 = load i8** %203, align 8
  %205 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %192, i8* getelementptr inbounds ([9 x i8]* @.str122, i32 0, i32 0), i8* %198, i8* %204)
  br label %206

; <label>:206                                     ; preds = %191
  %207 = load i32* %i, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %i, align 4
  br label %186

; <label>:209                                     ; preds = %186
  %210 = load %struct.mg_connection** %1, align 8
  %211 = call i32 @mg_write(%struct.mg_connection* %210, i8* getelementptr inbounds ([3 x i8]* @.str123, i32 0, i32 0), i64 2)
  %212 = load %struct.mg_connection** %1, align 8
  %213 = getelementptr inbounds [16384 x i8]* %buf, i32 0, i32 0
  %214 = load i32* %headers_len, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8* %213, i64 %215
  %217 = load i32* %data_len, align 4
  %218 = load i32* %headers_len, align 4
  %219 = sub nsw i32 %217, %218
  %220 = sext i32 %219 to i64
  %221 = call i32 @mg_write(%struct.mg_connection* %212, i8* %216, i64 %220)
  %222 = sext i32 %221 to i64
  %223 = load %struct.mg_connection** %1, align 8
  %224 = getelementptr inbounds %struct.mg_connection* %223, i32 0, i32 6
  %225 = load i64* %224, align 8
  %226 = add nsw i64 %225, %222
  store i64 %226, i64* %224, align 8
  %227 = load %struct.mg_connection** %1, align 8
  call void @send_file_data(%struct.mg_connection* %227, %struct.file* %fout, i64 0, i64 9223372036854775807)
  br label %228

; <label>:228                                     ; preds = %209, %117, %106, %84, %51, %30
  %229 = load i32* %pid, align 4
  %230 = icmp ne i32 %229, -1
  br i1 %230, label %231, label %234

; <label>:231                                     ; preds = %228
  %232 = load i32* %pid, align 4
  %233 = call i32 @kill(i32 %232, i32 9) nounwind
  br label %234

; <label>:234                                     ; preds = %231, %228
  %235 = getelementptr inbounds [2 x i32]* %fdin, i32 0, i64 0
  %236 = load i32* %235, align 4
  %237 = icmp ne i32 %236, -1
  br i1 %237, label %238, label %242

; <label>:238                                     ; preds = %234
  %239 = getelementptr inbounds [2 x i32]* %fdin, i32 0, i64 0
  %240 = load i32* %239, align 4
  %241 = call i32 @close(i32 %240)
  br label %242

; <label>:242                                     ; preds = %238, %234
  %243 = getelementptr inbounds [2 x i32]* %fdout, i32 0, i64 1
  %244 = load i32* %243, align 4
  %245 = icmp ne i32 %244, -1
  br i1 %245, label %246, label %250

; <label>:246                                     ; preds = %242
  %247 = getelementptr inbounds [2 x i32]* %fdout, i32 0, i64 1
  %248 = load i32* %247, align 4
  %249 = call i32 @close(i32 %248)
  br label %250

; <label>:250                                     ; preds = %246, %242
  %251 = load %struct._IO_FILE** %in, align 8
  %252 = icmp ne %struct._IO_FILE* %251, null
  br i1 %252, label %253, label %256

; <label>:253                                     ; preds = %250
  %254 = load %struct._IO_FILE** %in, align 8
  %255 = call i32 @fclose(%struct._IO_FILE* %254)
  br label %265

; <label>:256                                     ; preds = %250
  %257 = getelementptr inbounds [2 x i32]* %fdin, i32 0, i64 1
  %258 = load i32* %257, align 4
  %259 = icmp ne i32 %258, -1
  br i1 %259, label %260, label %264

; <label>:260                                     ; preds = %256
  %261 = getelementptr inbounds [2 x i32]* %fdin, i32 0, i64 1
  %262 = load i32* %261, align 4
  %263 = call i32 @close(i32 %262)
  br label %264

; <label>:264                                     ; preds = %260, %256
  br label %265

; <label>:265                                     ; preds = %264, %253
  %266 = load %struct._IO_FILE** %out, align 8
  %267 = icmp ne %struct._IO_FILE* %266, null
  br i1 %267, label %268, label %271

; <label>:268                                     ; preds = %265
  %269 = load %struct._IO_FILE** %out, align 8
  %270 = call i32 @fclose(%struct._IO_FILE* %269)
  br label %280

; <label>:271                                     ; preds = %265
  %272 = getelementptr inbounds [2 x i32]* %fdout, i32 0, i64 0
  %273 = load i32* %272, align 4
  %274 = icmp ne i32 %273, -1
  br i1 %274, label %275, label %279

; <label>:275                                     ; preds = %271
  %276 = getelementptr inbounds [2 x i32]* %fdout, i32 0, i64 0
  %277 = load i32* %276, align 4
  %278 = call i32 @close(i32 %277)
  br label %279

; <label>:279                                     ; preds = %275, %271
  br label %280

; <label>:280                                     ; preds = %279, %268
  ret void
}

define internal void @handle_ssi_file_request(%struct.mg_connection* %conn, i8* %path) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %file = alloca %struct.file, align 8
  %mime_vec = alloca %struct.vec, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %path, i8** %2, align 8
  %3 = bitcast %struct.file* %file to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 48, i32 8, i1 false)
  %4 = bitcast i8* %3 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %5 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %4, i32 0, i32 6
  %6 = load %struct.mg_connection** %1, align 8
  %7 = load i8** %2, align 8
  %8 = call i32 @mg_fopen(%struct.mg_connection* %6, i8* %7, i8* getelementptr inbounds ([3 x i8]* @.str93, i32 0, i32 0), %struct.file* %file)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

; <label>:10                                      ; preds = %0
  %11 = load %struct.mg_connection** %1, align 8
  %12 = load i8** @http_500_error, align 8
  %13 = load i8** %2, align 8
  %14 = call i32* @__errno_location() nounwind readnone
  %15 = load i32* %14
  %16 = call i8* @strerror(i32 %15) nounwind
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %11, i32 500, i8* %12, i8* getelementptr inbounds ([14 x i8]* @.str94, i32 0, i32 0), i8* %13, i8* %16)
  br label %33

; <label>:17                                      ; preds = %0
  %18 = load %struct.mg_connection** %1, align 8
  %19 = getelementptr inbounds %struct.mg_connection* %18, i32 0, i32 11
  store i32 1, i32* %19, align 4
  call void @fclose_on_exec(%struct.file* %file)
  %20 = load %struct.mg_connection** %1, align 8
  %21 = getelementptr inbounds %struct.mg_connection* %20, i32 0, i32 1
  %22 = load %struct.mg_context** %21, align 8
  %23 = load i8** %2, align 8
  call void @get_mime_type(%struct.mg_context* %22, i8* %23, %struct.vec* %mime_vec)
  %24 = load %struct.mg_connection** %1, align 8
  %25 = getelementptr inbounds %struct.vec* %mime_vec, i32 0, i32 1
  %26 = load i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %struct.vec* %mime_vec, i32 0, i32 0
  %29 = load i8** %28, align 8
  %30 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %24, i8* getelementptr inbounds ([59 x i8]* @.str95, i32 0, i32 0), i32 %27, i8* %29)
  %31 = load %struct.mg_connection** %1, align 8
  %32 = load i8** %2, align 8
  call void @send_ssi_file(%struct.mg_connection* %31, i8* %32, %struct.file* %file, i32 0)
  call void @mg_fclose(%struct.file* %file)
  br label %33

; <label>:33                                      ; preds = %17, %10
  ret void
}

define internal i32 @is_not_modified(%struct.mg_connection* %conn, %struct.file* %filep) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca %struct.file*, align 8
  %etag = alloca [64 x i8], align 16
  %ims = alloca i8*, align 8
  %inm = alloca i8*, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store %struct.file* %filep, %struct.file** %2, align 8
  %3 = load %struct.mg_connection** %1, align 8
  %4 = call i8* @mg_get_header(%struct.mg_connection* %3, i8* getelementptr inbounds ([18 x i8]* @.str74, i32 0, i32 0))
  store i8* %4, i8** %ims, align 8
  %5 = load %struct.mg_connection** %1, align 8
  %6 = call i8* @mg_get_header(%struct.mg_connection* %5, i8* getelementptr inbounds ([14 x i8]* @.str75, i32 0, i32 0))
  store i8* %6, i8** %inm, align 8
  %7 = getelementptr inbounds [64 x i8]* %etag, i32 0, i32 0
  %8 = load %struct.file** %2, align 8
  call void @construct_etag(i8* %7, i64 64, %struct.file* %8)
  %9 = load i8** %inm, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %16

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds [64 x i8]* %etag, i32 0, i32 0
  %13 = load i8** %inm, align 8
  %14 = call i32 @mg_strcasecmp(i8* %12, i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

; <label>:16                                      ; preds = %11, %0
  %17 = load i8** %ims, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %26

; <label>:19                                      ; preds = %16
  %20 = load %struct.file** %2, align 8
  %21 = getelementptr inbounds %struct.file* %20, i32 0, i32 1
  %22 = load i64* %21, align 8
  %23 = load i8** %ims, align 8
  %24 = call i64 @parse_date_string(i8* %23)
  %25 = icmp sle i64 %22, %24
  br label %26

; <label>:26                                      ; preds = %19, %16
  %27 = phi i1 [ false, %16 ], [ %25, %19 ]
  br label %28

; <label>:28                                      ; preds = %26, %11
  %29 = phi i1 [ true, %11 ], [ %27, %26 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

define internal void @construct_etag(i8* %buf, i64 %buf_len, %struct.file* %filep) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.file*, align 8
  store i8* %buf, i8** %1, align 8
  store i64 %buf_len, i64* %2, align 8
  store %struct.file* %filep, %struct.file** %3, align 8
  %4 = load i8** %1, align 8
  %5 = load i64* %2, align 8
  %6 = load %struct.file** %3, align 8
  %7 = getelementptr inbounds %struct.file* %6, i32 0, i32 1
  %8 = load i64* %7, align 8
  %9 = load %struct.file** %3, align 8
  %10 = getelementptr inbounds %struct.file* %9, i32 0, i32 2
  %11 = load i64* %10, align 8
  %12 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %4, i64 %5, i8* getelementptr inbounds ([10 x i8]* @.str92, i32 0, i32 0), i64 %8, i64 %11) nounwind
  ret void
}

define internal i64 @parse_date_string(i8* %datetime) nounwind uwtable {
  %1 = alloca i8*, align 8
  %month_str = alloca [32 x i8], align 16
  %second = alloca i32, align 4
  %minute = alloca i32, align 4
  %hour = alloca i32, align 4
  %day = alloca i32, align 4
  %month = alloca i32, align 4
  %year = alloca i32, align 4
  %leap_days = alloca i32, align 4
  %days = alloca i32, align 4
  %result = alloca i64, align 8
  store i8* %datetime, i8** %1, align 8
  store i64 0, i64* %result, align 8
  %2 = load i8** %1, align 8
  %3 = getelementptr inbounds [32 x i8]* %month_str, i32 0, i32 0
  %4 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([19 x i8]* @.str76, i32 0, i32 0), i32* %day, i8* %3, i32* %year, i32* %hour, i32* %minute, i32* %second) nounwind
  %5 = icmp eq i32 %4, 6
  br i1 %5, label %21, label %6

; <label>:6                                       ; preds = %0
  %7 = load i8** %1, align 8
  %8 = getelementptr inbounds [32 x i8]* %month_str, i32 0, i32 0
  %9 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([19 x i8]* @.str77, i32 0, i32 0), i32* %day, i8* %8, i32* %year, i32* %hour, i32* %minute, i32* %second) nounwind
  %10 = icmp eq i32 %9, 6
  br i1 %10, label %21, label %11

; <label>:11                                      ; preds = %6
  %12 = load i8** %1, align 8
  %13 = getelementptr inbounds [32 x i8]* %month_str, i32 0, i32 0
  %14 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %12, i8* getelementptr inbounds ([25 x i8]* @.str78, i32 0, i32 0), i32* %day, i8* %13, i32* %year, i32* %hour, i32* %minute, i32* %second) nounwind
  %15 = icmp eq i32 %14, 6
  br i1 %15, label %21, label %16

; <label>:16                                      ; preds = %11
  %17 = load i8** %1, align 8
  %18 = getelementptr inbounds [32 x i8]* %month_str, i32 0, i32 0
  %19 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %17, i8* getelementptr inbounds ([19 x i8]* @.str79, i32 0, i32 0), i32* %day, i8* %18, i32* %year, i32* %hour, i32* %minute, i32* %second) nounwind
  %20 = icmp eq i32 %19, 6
  br i1 %20, label %21, label %60

; <label>:21                                      ; preds = %16, %11, %6, %0
  %22 = load i32* %year, align 4
  %23 = icmp sgt i32 %22, 1970
  br i1 %23, label %24, label %60

; <label>:24                                      ; preds = %21
  %25 = getelementptr inbounds [32 x i8]* %month_str, i32 0, i32 0
  %26 = call i32 @get_month_index(i8* %25)
  store i32 %26, i32* %month, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %60

; <label>:28                                      ; preds = %24
  %29 = load i32* %year, align 4
  %30 = call i32 @num_leap_years(i32 %29)
  %31 = call i32 @num_leap_years(i32 1970)
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %leap_days, align 4
  %33 = load i32* %year, align 4
  %34 = sub nsw i32 %33, 1970
  store i32 %34, i32* %year, align 4
  %35 = load i32* %year, align 4
  %36 = mul nsw i32 %35, 365
  %37 = load i32* %month, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [12 x i16]* @parse_date_string.days_before_month, i32 0, i64 %38
  %40 = load i16* %39, align 2
  %41 = zext i16 %40 to i32
  %42 = add nsw i32 %36, %41
  %43 = load i32* %day, align 4
  %44 = sub nsw i32 %43, 1
  %45 = add nsw i32 %42, %44
  %46 = load i32* %leap_days, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %days, align 4
  %48 = load i32* %days, align 4
  %49 = mul nsw i32 %48, 24
  %50 = mul nsw i32 %49, 3600
  %51 = load i32* %hour, align 4
  %52 = mul nsw i32 %51, 3600
  %53 = add nsw i32 %50, %52
  %54 = load i32* %minute, align 4
  %55 = mul nsw i32 %54, 60
  %56 = add nsw i32 %53, %55
  %57 = load i32* %second, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %result, align 8
  br label %60

; <label>:60                                      ; preds = %28, %24, %21, %16
  %61 = load i64* %result, align 8
  ret i64 %61
}

define internal i32 @get_month_index(i8* %s) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %i = alloca i64, align 8
  store i8* %s, i8** %2, align 8
  store i64 0, i64* %i, align 8
  br label %3

; <label>:3                                       ; preds = %17, %0
  %4 = load i64* %i, align 8
  %5 = icmp ult i64 %4, 12
  br i1 %5, label %6, label %20

; <label>:6                                       ; preds = %3
  %7 = load i8** %2, align 8
  %8 = load i64* %i, align 8
  %9 = getelementptr inbounds [12 x i8*]* @month_names, i32 0, i64 %8
  %10 = load i8** %9, align 8
  %11 = call i32 @strcmp(i8* %7, i8* %10) nounwind readonly
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

; <label>:13                                      ; preds = %6
  %14 = load i64* %i, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %1
  br label %21

; <label>:16                                      ; preds = %6
  br label %17

; <label>:17                                      ; preds = %16
  %18 = load i64* %i, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %i, align 8
  br label %3

; <label>:20                                      ; preds = %3
  store i32 -1, i32* %1
  br label %21

; <label>:21                                      ; preds = %20, %13
  %22 = load i32* %1
  ret i32 %22
}

define internal i32 @num_leap_years(i32 %year) nounwind uwtable {
  %1 = alloca i32, align 4
  store i32 %year, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = sdiv i32 %2, 4
  %4 = load i32* %1, align 4
  %5 = sdiv i32 %4, 100
  %6 = sub nsw i32 %3, %5
  %7 = load i32* %1, align 4
  %8 = sdiv i32 %7, 400
  %9 = add nsw i32 %6, %8
  ret i32 %9
}

define internal i32 @mg_fopen(%struct.mg_connection* %conn, i8* %path, i8* %mode, %struct.file* %filep) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %path, i8** %2, align 8
  store i8* %mode, i8** %3, align 8
  store %struct.file* %filep, %struct.file** %4, align 8
  %5 = load %struct.mg_connection** %1, align 8
  %6 = load i8** %2, align 8
  %7 = load %struct.file** %4, align 8
  %8 = call i32 @is_file_in_memory(%struct.mg_connection* %5, i8* %6, %struct.file* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

; <label>:10                                      ; preds = %0
  %11 = load i8** %2, align 8
  %12 = load i8** %3, align 8
  %13 = call %struct._IO_FILE* @fopen(i8* %11, i8* %12)
  %14 = load %struct.file** %4, align 8
  %15 = getelementptr inbounds %struct.file* %14, i32 0, i32 3
  store %struct._IO_FILE* %13, %struct._IO_FILE** %15, align 8
  br label %16

; <label>:16                                      ; preds = %10, %0
  %17 = load %struct.file** %4, align 8
  %18 = call i32 @is_file_opened(%struct.file* %17)
  ret i32 %18
}

define internal void @fclose_on_exec(%struct.file* %filep) nounwind uwtable {
  %1 = alloca %struct.file*, align 8
  store %struct.file* %filep, %struct.file** %1, align 8
  %2 = load %struct.file** %1, align 8
  %3 = icmp ne %struct.file* %2, null
  br i1 %3, label %4, label %15

; <label>:4                                       ; preds = %0
  %5 = load %struct.file** %1, align 8
  %6 = getelementptr inbounds %struct.file* %5, i32 0, i32 3
  %7 = load %struct._IO_FILE** %6, align 8
  %8 = icmp ne %struct._IO_FILE* %7, null
  br i1 %8, label %9, label %15

; <label>:9                                       ; preds = %4
  %10 = load %struct.file** %1, align 8
  %11 = getelementptr inbounds %struct.file* %10, i32 0, i32 3
  %12 = load %struct._IO_FILE** %11, align 8
  %13 = call i32 @fileno(%struct._IO_FILE* %12) nounwind
  %14 = call i32 (i32, i32, ...)* @fcntl(i32 %13, i32 2, i32 1)
  br label %15

; <label>:15                                      ; preds = %9, %4, %0
  ret void
}

define internal void @get_mime_type(%struct.mg_context* %ctx, i8* %path, %struct.vec* %vec) nounwind uwtable {
  %1 = alloca %struct.mg_context*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vec*, align 8
  %ext_vec = alloca %struct.vec, align 8
  %mime_vec = alloca %struct.vec, align 8
  %list = alloca i8*, align 8
  %ext = alloca i8*, align 8
  %path_len = alloca i64, align 8
  store %struct.mg_context* %ctx, %struct.mg_context** %1, align 8
  store i8* %path, i8** %2, align 8
  store %struct.vec* %vec, %struct.vec** %3, align 8
  %4 = load i8** %2, align 8
  %5 = call i64 @strlen(i8* %4) nounwind readonly
  store i64 %5, i64* %path_len, align 8
  %6 = load %struct.mg_context** %1, align 8
  %7 = getelementptr inbounds %struct.mg_context* %6, i32 0, i32 2
  %8 = getelementptr inbounds [24 x i8*]* %7, i32 0, i64 15
  %9 = load i8** %8, align 8
  store i8* %9, i8** %list, align 8
  br label %10

; <label>:10                                      ; preds = %33, %0
  %11 = load i8** %list, align 8
  %12 = call i8* @next_option(i8* %11, %struct.vec* %ext_vec, %struct.vec* %mime_vec)
  store i8* %12, i8** %list, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %34

; <label>:14                                      ; preds = %10
  %15 = load i8** %2, align 8
  %16 = load i64* %path_len, align 8
  %17 = getelementptr inbounds i8* %15, i64 %16
  %18 = getelementptr inbounds %struct.vec* %ext_vec, i32 0, i32 1
  %19 = load i64* %18, align 8
  %20 = sub i64 0, %19
  %21 = getelementptr inbounds i8* %17, i64 %20
  store i8* %21, i8** %ext, align 8
  %22 = load i8** %ext, align 8
  %23 = getelementptr inbounds %struct.vec* %ext_vec, i32 0, i32 0
  %24 = load i8** %23, align 8
  %25 = getelementptr inbounds %struct.vec* %ext_vec, i32 0, i32 1
  %26 = load i64* %25, align 8
  %27 = call i32 @mg_strncasecmp(i8* %22, i8* %24, i64 %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

; <label>:29                                      ; preds = %14
  %30 = load %struct.vec** %3, align 8
  %31 = bitcast %struct.vec* %30 to i8*
  %32 = bitcast %struct.vec* %mime_vec to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false)
  br label %45

; <label>:33                                      ; preds = %14
  br label %10

; <label>:34                                      ; preds = %10
  %35 = load i8** %2, align 8
  %36 = call i8* @mg_get_builtin_mime_type(i8* %35)
  %37 = load %struct.vec** %3, align 8
  %38 = getelementptr inbounds %struct.vec* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.vec** %3, align 8
  %40 = getelementptr inbounds %struct.vec* %39, i32 0, i32 0
  %41 = load i8** %40, align 8
  %42 = call i64 @strlen(i8* %41) nounwind readonly
  %43 = load %struct.vec** %3, align 8
  %44 = getelementptr inbounds %struct.vec* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  br label %45

; <label>:45                                      ; preds = %34, %29
  ret void
}

define internal void @send_ssi_file(%struct.mg_connection* %conn, i8* %path, %struct.file* %filep, i32 %include_level) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %buf = alloca [8192 x i8], align 16
  %ch = alloca i32, align 4
  %offset = alloca i32, align 4
  %len = alloca i32, align 4
  %in_ssi_tag = alloca i32, align 4
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %path, i8** %2, align 8
  store %struct.file* %filep, %struct.file** %3, align 8
  store i32 %include_level, i32* %4, align 4
  %5 = load i32* %4, align 4
  %6 = icmp sgt i32 %5, 10
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %0
  %8 = load %struct.mg_connection** %1, align 8
  %9 = load i8** %2, align 8
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %8, i8* getelementptr inbounds ([36 x i8]* @.str96, i32 0, i32 0), i8* %9)
  br label %152

; <label>:10                                      ; preds = %0
  store i32 0, i32* %offset, align 4
  store i32 0, i32* %len, align 4
  store i32 0, i32* %in_ssi_tag, align 4
  br label %11

; <label>:11                                      ; preds = %142, %10
  %12 = load %struct.file** %3, align 8
  %13 = load i32* %offset, align 4
  %14 = call i32 @mg_fgetc(%struct.file* %12, i32 %13)
  store i32 %14, i32* %ch, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %143

; <label>:16                                      ; preds = %11
  %17 = load i32* %in_ssi_tag, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %77

; <label>:19                                      ; preds = %16
  %20 = load i32* %ch, align 4
  %21 = icmp eq i32 %20, 62
  br i1 %21, label %22, label %77

; <label>:22                                      ; preds = %19
  store i32 0, i32* %in_ssi_tag, align 4
  %23 = load i32* %ch, align 4
  %24 = trunc i32 %23 to i8
  %25 = load i32* %len, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %len, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %27
  store i8 %24, i8* %28, align 1
  %29 = load i32* %len, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %30
  store i8 0, i8* %31, align 1
  %32 = load i32* %len, align 4
  %33 = icmp sle i32 %32, 8192
  br i1 %33, label %34, label %35

; <label>:34                                      ; preds = %22
  br label %37

; <label>:35                                      ; preds = %22
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8]* @.str97, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str4, i32 0, i32 0), i32 3739, i8* getelementptr inbounds ([77 x i8]* @__PRETTY_FUNCTION__.send_ssi_file, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %37

; <label>:37                                      ; preds = %36, %34
  %38 = load i32* %len, align 4
  %39 = icmp slt i32 %38, 6
  br i1 %39, label %44, label %40

; <label>:40                                      ; preds = %37
  %41 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %42 = call i32 @memcmp(i8* %41, i8* getelementptr inbounds ([6 x i8]* @.str98, i32 0, i32 0), i64 5) nounwind readonly
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

; <label>:44                                      ; preds = %40, %37
  %45 = load %struct.mg_connection** %1, align 8
  %46 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %47 = load i32* %len, align 4
  %48 = sext i32 %47 to i64
  %49 = call i32 @mg_write(%struct.mg_connection* %45, i8* %46, i64 %48)
  br label %76

; <label>:50                                      ; preds = %40
  %51 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %52 = getelementptr inbounds i8* %51, i64 5
  %53 = call i32 @memcmp(i8* %52, i8* getelementptr inbounds ([8 x i8]* @.str99, i32 0, i32 0), i64 7) nounwind readonly
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

; <label>:55                                      ; preds = %50
  %56 = load %struct.mg_connection** %1, align 8
  %57 = load i8** %2, align 8
  %58 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %59 = getelementptr inbounds i8* %58, i64 12
  %60 = load i32* %4, align 4
  call void @do_ssi_include(%struct.mg_connection* %56, i8* %57, i8* %59, i32 %60)
  br label %75

; <label>:61                                      ; preds = %50
  %62 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %63 = getelementptr inbounds i8* %62, i64 5
  %64 = call i32 @memcmp(i8* %63, i8* getelementptr inbounds ([5 x i8]* @.str100, i32 0, i32 0), i64 4) nounwind readonly
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

; <label>:66                                      ; preds = %61
  %67 = load %struct.mg_connection** %1, align 8
  %68 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %69 = getelementptr inbounds i8* %68, i64 9
  call void @do_ssi_exec(%struct.mg_connection* %67, i8* %69)
  br label %74

; <label>:70                                      ; preds = %61
  %71 = load %struct.mg_connection** %1, align 8
  %72 = load i8** %2, align 8
  %73 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %71, i8* getelementptr inbounds ([30 x i8]* @.str101, i32 0, i32 0), i8* %72, i8* %73)
  br label %74

; <label>:74                                      ; preds = %70, %66
  br label %75

; <label>:75                                      ; preds = %74, %55
  br label %76

; <label>:76                                      ; preds = %75, %44
  store i32 0, i32* %len, align 4
  br label %142

; <label>:77                                      ; preds = %19, %16
  %78 = load i32* %in_ssi_tag, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %103

; <label>:80                                      ; preds = %77
  %81 = load i32* %len, align 4
  %82 = icmp eq i32 %81, 5
  br i1 %82, label %83, label %88

; <label>:83                                      ; preds = %80
  %84 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %85 = call i32 @memcmp(i8* %84, i8* getelementptr inbounds ([6 x i8]* @.str98, i32 0, i32 0), i64 5) nounwind readonly
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %83
  store i32 0, i32* %in_ssi_tag, align 4
  br label %95

; <label>:88                                      ; preds = %83, %80
  %89 = load i32* %len, align 4
  %90 = icmp eq i32 %89, 8190
  br i1 %90, label %91, label %94

; <label>:91                                      ; preds = %88
  %92 = load %struct.mg_connection** %1, align 8
  %93 = load i8** %2, align 8
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %92, i8* getelementptr inbounds ([25 x i8]* @.str102, i32 0, i32 0), i8* %93)
  store i32 0, i32* %len, align 4
  br label %94

; <label>:94                                      ; preds = %91, %88
  br label %95

; <label>:95                                      ; preds = %94, %87
  %96 = load i32* %ch, align 4
  %97 = and i32 %96, 255
  %98 = trunc i32 %97 to i8
  %99 = load i32* %len, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %len, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %101
  store i8 %98, i8* %102, align 1
  br label %141

; <label>:103                                     ; preds = %77
  %104 = load i32* %ch, align 4
  %105 = icmp eq i32 %104, 60
  br i1 %105, label %106, label %123

; <label>:106                                     ; preds = %103
  store i32 1, i32* %in_ssi_tag, align 4
  %107 = load i32* %len, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %115

; <label>:109                                     ; preds = %106
  %110 = load %struct.mg_connection** %1, align 8
  %111 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %112 = load i32* %len, align 4
  %113 = sext i32 %112 to i64
  %114 = call i32 @mg_write(%struct.mg_connection* %110, i8* %111, i64 %113)
  br label %115

; <label>:115                                     ; preds = %109, %106
  store i32 0, i32* %len, align 4
  %116 = load i32* %ch, align 4
  %117 = and i32 %116, 255
  %118 = trunc i32 %117 to i8
  %119 = load i32* %len, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %len, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %121
  store i8 %118, i8* %122, align 1
  br label %140

; <label>:123                                     ; preds = %103
  %124 = load i32* %ch, align 4
  %125 = and i32 %124, 255
  %126 = trunc i32 %125 to i8
  %127 = load i32* %len, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %len, align 4
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %129
  store i8 %126, i8* %130, align 1
  %131 = load i32* %len, align 4
  %132 = icmp eq i32 %131, 8192
  br i1 %132, label %133, label %139

; <label>:133                                     ; preds = %123
  %134 = load %struct.mg_connection** %1, align 8
  %135 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %136 = load i32* %len, align 4
  %137 = sext i32 %136 to i64
  %138 = call i32 @mg_write(%struct.mg_connection* %134, i8* %135, i64 %137)
  store i32 0, i32* %len, align 4
  br label %139

; <label>:139                                     ; preds = %133, %123
  br label %140

; <label>:140                                     ; preds = %139, %115
  br label %141

; <label>:141                                     ; preds = %140, %95
  br label %142

; <label>:142                                     ; preds = %141, %76
  br label %11

; <label>:143                                     ; preds = %11
  %144 = load i32* %len, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %152

; <label>:146                                     ; preds = %143
  %147 = load %struct.mg_connection** %1, align 8
  %148 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %149 = load i32* %len, align 4
  %150 = sext i32 %149 to i64
  %151 = call i32 @mg_write(%struct.mg_connection* %147, i8* %148, i64 %150)
  br label %152

; <label>:152                                     ; preds = %7, %146, %143
  ret void
}

define internal void @mg_fclose(%struct.file* %filep) nounwind uwtable {
  %1 = alloca %struct.file*, align 8
  store %struct.file* %filep, %struct.file** %1, align 8
  %2 = load %struct.file** %1, align 8
  %3 = icmp ne %struct.file* %2, null
  br i1 %3, label %4, label %14

; <label>:4                                       ; preds = %0
  %5 = load %struct.file** %1, align 8
  %6 = getelementptr inbounds %struct.file* %5, i32 0, i32 3
  %7 = load %struct._IO_FILE** %6, align 8
  %8 = icmp ne %struct._IO_FILE* %7, null
  br i1 %8, label %9, label %14

; <label>:9                                       ; preds = %4
  %10 = load %struct.file** %1, align 8
  %11 = getelementptr inbounds %struct.file* %10, i32 0, i32 3
  %12 = load %struct._IO_FILE** %11, align 8
  %13 = call i32 @fclose(%struct._IO_FILE* %12)
  br label %14

; <label>:14                                      ; preds = %9, %4, %0
  ret void
}

define internal i32 @mg_fgetc(%struct.file* %filep, i32 %offset) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca %struct.file*, align 8
  %3 = alloca i32, align 4
  store %struct.file* %filep, %struct.file** %2, align 8
  store i32 %offset, i32* %3, align 4
  %4 = load %struct.file** %2, align 8
  %5 = getelementptr inbounds %struct.file* %4, i32 0, i32 4
  %6 = load i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %27

; <label>:8                                       ; preds = %0
  %9 = load i32* %3, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %27

; <label>:11                                      ; preds = %8
  %12 = load i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = load %struct.file** %2, align 8
  %15 = getelementptr inbounds %struct.file* %14, i32 0, i32 2
  %16 = load i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %27

; <label>:18                                      ; preds = %11
  %19 = load i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.file** %2, align 8
  %22 = getelementptr inbounds %struct.file* %21, i32 0, i32 4
  %23 = load i8** %22, align 8
  %24 = getelementptr inbounds i8* %23, i64 %20
  %25 = load i8* %24
  %26 = zext i8 %25 to i32
  store i32 %26, i32* %1
  br label %38

; <label>:27                                      ; preds = %11, %8, %0
  %28 = load %struct.file** %2, align 8
  %29 = getelementptr inbounds %struct.file* %28, i32 0, i32 3
  %30 = load %struct._IO_FILE** %29, align 8
  %31 = icmp ne %struct._IO_FILE* %30, null
  br i1 %31, label %32, label %37

; <label>:32                                      ; preds = %27
  %33 = load %struct.file** %2, align 8
  %34 = getelementptr inbounds %struct.file* %33, i32 0, i32 3
  %35 = load %struct._IO_FILE** %34, align 8
  %36 = call i32 @fgetc(%struct._IO_FILE* %35)
  store i32 %36, i32* %1
  br label %38

; <label>:37                                      ; preds = %27
  store i32 -1, i32* %1
  br label %38

; <label>:38                                      ; preds = %37, %32, %18
  %39 = load i32* %1
  ret i32 %39
}

define internal void @do_ssi_include(%struct.mg_connection* %conn, i8* %ssi, i8* %tag, i32 %include_level) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %file_name = alloca [8192 x i8], align 16
  %path = alloca [4096 x i8], align 16
  %p = alloca i8*, align 8
  %file = alloca %struct.file, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %ssi, i8** %2, align 8
  store i8* %tag, i8** %3, align 8
  store i32 %include_level, i32* %4, align 4
  %5 = bitcast %struct.file* %file to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 48, i32 8, i1 false)
  %6 = bitcast i8* %5 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %7 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %6, i32 0, i32 6
  %8 = load i8** %3, align 8
  %9 = getelementptr inbounds [8192 x i8]* %file_name, i32 0, i32 0
  %10 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %8, i8* getelementptr inbounds ([17 x i8]* @.str106, i32 0, i32 0), i8* %9) nounwind
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %23

; <label>:12                                      ; preds = %0
  %13 = load %struct.mg_connection** %1, align 8
  %14 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %15 = load %struct.mg_connection** %1, align 8
  %16 = getelementptr inbounds %struct.mg_connection* %15, i32 0, i32 1
  %17 = load %struct.mg_context** %16, align 8
  %18 = getelementptr inbounds %struct.mg_context* %17, i32 0, i32 2
  %19 = getelementptr inbounds [24 x i8*]* %18, i32 0, i64 17
  %20 = load i8** %19, align 8
  %21 = getelementptr inbounds [8192 x i8]* %file_name, i32 0, i32 0
  %22 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %13, i8* %14, i64 4096, i8* getelementptr inbounds ([7 x i8]* @.str107, i32 0, i32 0), i8* %20, i32 47, i8* %21)
  br label %70

; <label>:23                                      ; preds = %0
  %24 = load i8** %3, align 8
  %25 = getelementptr inbounds [8192 x i8]* %file_name, i32 0, i32 0
  %26 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %24, i8* getelementptr inbounds ([17 x i8]* @.str108, i32 0, i32 0), i8* %25) nounwind
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %33

; <label>:28                                      ; preds = %23
  %29 = load %struct.mg_connection** %1, align 8
  %30 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %31 = getelementptr inbounds [8192 x i8]* %file_name, i32 0, i32 0
  %32 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %29, i8* %30, i64 4096, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* %31)
  br label %69

; <label>:33                                      ; preds = %23
  %34 = load i8** %3, align 8
  %35 = getelementptr inbounds [8192 x i8]* %file_name, i32 0, i32 0
  %36 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %34, i8* getelementptr inbounds ([14 x i8]* @.str109, i32 0, i32 0), i8* %35) nounwind
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %43, label %38

; <label>:38                                      ; preds = %33
  %39 = load i8** %3, align 8
  %40 = getelementptr inbounds [8192 x i8]* %file_name, i32 0, i32 0
  %41 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %39, i8* getelementptr inbounds ([9 x i8]* @.str103, i32 0, i32 0), i8* %40) nounwind
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %65

; <label>:43                                      ; preds = %38, %33
  %44 = load %struct.mg_connection** %1, align 8
  %45 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %46 = load i8** %2, align 8
  %47 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %44, i8* %45, i64 4096, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* %46)
  %48 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %49 = call i8* @strrchr(i8* %48, i32 47) nounwind readonly
  store i8* %49, i8** %p, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %54

; <label>:51                                      ; preds = %43
  %52 = load i8** %p, align 8
  %53 = getelementptr inbounds i8* %52, i64 1
  store i8 0, i8* %53
  br label %54

; <label>:54                                      ; preds = %51, %43
  %55 = load %struct.mg_connection** %1, align 8
  %56 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %57 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %58 = call i64 @strlen(i8* %57) nounwind readonly
  %59 = getelementptr inbounds i8* %56, i64 %58
  %60 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %61 = call i64 @strlen(i8* %60) nounwind readonly
  %62 = sub i64 4096, %61
  %63 = getelementptr inbounds [8192 x i8]* %file_name, i32 0, i32 0
  %64 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %55, i8* %59, i64 %62, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* %63)
  br label %68

; <label>:65                                      ; preds = %38
  %66 = load %struct.mg_connection** %1, align 8
  %67 = load i8** %3, align 8
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %66, i8* getelementptr inbounds ([23 x i8]* @.str110, i32 0, i32 0), i8* %67)
  br label %108

; <label>:68                                      ; preds = %54
  br label %69

; <label>:69                                      ; preds = %68, %28
  br label %70

; <label>:70                                      ; preds = %69, %12
  %71 = load %struct.mg_connection** %1, align 8
  %72 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %73 = call i32 @mg_fopen(%struct.mg_connection* %71, i8* %72, i8* getelementptr inbounds ([3 x i8]* @.str93, i32 0, i32 0), %struct.file* %file)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

; <label>:75                                      ; preds = %70
  %76 = load %struct.mg_connection** %1, align 8
  %77 = load i8** %3, align 8
  %78 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %79 = call i32* @__errno_location() nounwind readnone
  %80 = load i32* %79
  %81 = call i8* @strerror(i32 %80) nounwind
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %76, i8* getelementptr inbounds ([46 x i8]* @.str111, i32 0, i32 0), i8* %77, i8* %78, i8* %81)
  br label %108

; <label>:82                                      ; preds = %70
  call void @fclose_on_exec(%struct.file* %file)
  %83 = load %struct.mg_connection** %1, align 8
  %84 = getelementptr inbounds %struct.mg_connection* %83, i32 0, i32 1
  %85 = load %struct.mg_context** %84, align 8
  %86 = getelementptr inbounds %struct.mg_context* %85, i32 0, i32 2
  %87 = getelementptr inbounds [24 x i8*]* %86, i32 0, i64 6
  %88 = load i8** %87, align 8
  %89 = load %struct.mg_connection** %1, align 8
  %90 = getelementptr inbounds %struct.mg_connection* %89, i32 0, i32 1
  %91 = load %struct.mg_context** %90, align 8
  %92 = getelementptr inbounds %struct.mg_context* %91, i32 0, i32 2
  %93 = getelementptr inbounds [24 x i8*]* %92, i32 0, i64 6
  %94 = load i8** %93, align 8
  %95 = call i64 @strlen(i8* %94) nounwind readonly
  %96 = trunc i64 %95 to i32
  %97 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %98 = call i32 @match_prefix(i8* %88, i32 %96, i8* %97)
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %105

; <label>:100                                     ; preds = %82
  %101 = load %struct.mg_connection** %1, align 8
  %102 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %103 = load i32* %4, align 4
  %104 = add nsw i32 %103, 1
  call void @send_ssi_file(%struct.mg_connection* %101, i8* %102, %struct.file* %file, i32 %104)
  br label %107

; <label>:105                                     ; preds = %82
  %106 = load %struct.mg_connection** %1, align 8
  call void @send_file_data(%struct.mg_connection* %106, %struct.file* %file, i64 0, i64 9223372036854775807)
  br label %107

; <label>:107                                     ; preds = %105, %100
  call void @mg_fclose(%struct.file* %file)
  br label %108

; <label>:108                                     ; preds = %65, %107, %75
  ret void
}

define internal void @do_ssi_exec(%struct.mg_connection* %conn, i8* %tag) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %cmd = alloca [8192 x i8], align 16
  %file = alloca %struct.file, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %tag, i8** %2, align 8
  %3 = bitcast %struct.file* %file to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 48, i32 8, i1 false)
  %4 = bitcast i8* %3 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %5 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %4, i32 0, i32 6
  %6 = load i8** %2, align 8
  %7 = getelementptr inbounds [8192 x i8]* %cmd, i32 0, i32 0
  %8 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %6, i8* getelementptr inbounds ([9 x i8]* @.str103, i32 0, i32 0), i8* %7) nounwind
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %13

; <label>:10                                      ; preds = %0
  %11 = load %struct.mg_connection** %1, align 8
  %12 = load i8** %2, align 8
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %11, i8* getelementptr inbounds ([20 x i8]* @.str104, i32 0, i32 0), i8* %12)
  br label %30

; <label>:13                                      ; preds = %0
  %14 = getelementptr inbounds [8192 x i8]* %cmd, i32 0, i32 0
  %15 = call %struct._IO_FILE* @popen(i8* %14, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0))
  %16 = getelementptr inbounds %struct.file* %file, i32 0, i32 3
  store %struct._IO_FILE* %15, %struct._IO_FILE** %16, align 8
  %17 = icmp eq %struct._IO_FILE* %15, null
  br i1 %17, label %18, label %24

; <label>:18                                      ; preds = %13
  %19 = load %struct.mg_connection** %1, align 8
  %20 = getelementptr inbounds [8192 x i8]* %cmd, i32 0, i32 0
  %21 = call i32* @__errno_location() nounwind readnone
  %22 = load i32* %21
  %23 = call i8* @strerror(i32 %22) nounwind
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %19, i8* getelementptr inbounds ([27 x i8]* @.str105, i32 0, i32 0), i8* %20, i8* %23)
  br label %29

; <label>:24                                      ; preds = %13
  %25 = load %struct.mg_connection** %1, align 8
  call void @send_file_data(%struct.mg_connection* %25, %struct.file* %file, i64 0, i64 9223372036854775807)
  %26 = getelementptr inbounds %struct.file* %file, i32 0, i32 3
  %27 = load %struct._IO_FILE** %26, align 8
  %28 = call i32 @pclose(%struct._IO_FILE* %27)
  br label %29

; <label>:29                                      ; preds = %24, %18
  br label %30

; <label>:30                                      ; preds = %29, %10
  ret void
}

declare %struct._IO_FILE* @popen(i8*, i8*)

define internal void @send_file_data(%struct.mg_connection* %conn, %struct.file* %filep, i64 %offset, i64 %len) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca %struct.file*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %buf = alloca [8192 x i8], align 16
  %to_read = alloca i32, align 4
  %num_read = alloca i32, align 4
  %num_written = alloca i32, align 4
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store %struct.file* %filep, %struct.file** %2, align 8
  store i64 %offset, i64* %3, align 8
  store i64 %len, i64* %4, align 8
  %5 = load i64* %3, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %22

; <label>:8                                       ; preds = %0
  %9 = load i64* %3, align 8
  %10 = load %struct.file** %2, align 8
  %11 = getelementptr inbounds %struct.file* %10, i32 0, i32 2
  %12 = load i64* %11, align 8
  %13 = icmp sgt i64 %9, %12
  br i1 %13, label %14, label %18

; <label>:14                                      ; preds = %8
  %15 = load %struct.file** %2, align 8
  %16 = getelementptr inbounds %struct.file* %15, i32 0, i32 2
  %17 = load i64* %16, align 8
  br label %20

; <label>:18                                      ; preds = %8
  %19 = load i64* %3, align 8
  br label %20

; <label>:20                                      ; preds = %18, %14
  %21 = phi i64 [ %17, %14 ], [ %19, %18 ]
  br label %22

; <label>:22                                      ; preds = %20, %7
  %23 = phi i64 [ 0, %7 ], [ %21, %20 ]
  store i64 %23, i64* %3, align 8
  %24 = load i64* %4, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %59

; <label>:26                                      ; preds = %22
  %27 = load %struct.file** %2, align 8
  %28 = getelementptr inbounds %struct.file* %27, i32 0, i32 4
  %29 = load i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %59

; <label>:31                                      ; preds = %26
  %32 = load %struct.file** %2, align 8
  %33 = getelementptr inbounds %struct.file* %32, i32 0, i32 2
  %34 = load i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %59

; <label>:36                                      ; preds = %31
  %37 = load i64* %4, align 8
  %38 = load %struct.file** %2, align 8
  %39 = getelementptr inbounds %struct.file* %38, i32 0, i32 2
  %40 = load i64* %39, align 8
  %41 = load i64* %3, align 8
  %42 = sub nsw i64 %40, %41
  %43 = icmp sgt i64 %37, %42
  br i1 %43, label %44, label %50

; <label>:44                                      ; preds = %36
  %45 = load %struct.file** %2, align 8
  %46 = getelementptr inbounds %struct.file* %45, i32 0, i32 2
  %47 = load i64* %46, align 8
  %48 = load i64* %3, align 8
  %49 = sub nsw i64 %47, %48
  store i64 %49, i64* %4, align 8
  br label %50

; <label>:50                                      ; preds = %44, %36
  %51 = load %struct.mg_connection** %1, align 8
  %52 = load %struct.file** %2, align 8
  %53 = getelementptr inbounds %struct.file* %52, i32 0, i32 4
  %54 = load i8** %53, align 8
  %55 = load i64* %3, align 8
  %56 = getelementptr inbounds i8* %54, i64 %55
  %57 = load i64* %4, align 8
  %58 = call i32 @mg_write(%struct.mg_connection* %51, i8* %56, i64 %57)
  br label %117

; <label>:59                                      ; preds = %31, %26, %22
  %60 = load i64* %4, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %116

; <label>:62                                      ; preds = %59
  %63 = load %struct.file** %2, align 8
  %64 = getelementptr inbounds %struct.file* %63, i32 0, i32 3
  %65 = load %struct._IO_FILE** %64, align 8
  %66 = icmp ne %struct._IO_FILE* %65, null
  br i1 %66, label %67, label %116

; <label>:67                                      ; preds = %62
  %68 = load %struct.file** %2, align 8
  %69 = getelementptr inbounds %struct.file* %68, i32 0, i32 3
  %70 = load %struct._IO_FILE** %69, align 8
  %71 = load i64* %3, align 8
  %72 = call i32 @fseeko(%struct._IO_FILE* %70, i64 %71, i32 0)
  br label %73

; <label>:73                                      ; preds = %104, %67
  %74 = load i64* %4, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %115

; <label>:76                                      ; preds = %73
  store i32 8192, i32* %to_read, align 4
  %77 = load i32* %to_read, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64* %4, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %84

; <label>:81                                      ; preds = %76
  %82 = load i64* %4, align 8
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %to_read, align 4
  br label %84

; <label>:84                                      ; preds = %81, %76
  %85 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %86 = load i32* %to_read, align 4
  %87 = sext i32 %86 to i64
  %88 = load %struct.file** %2, align 8
  %89 = getelementptr inbounds %struct.file* %88, i32 0, i32 3
  %90 = load %struct._IO_FILE** %89, align 8
  %91 = call i64 @fread(i8* %85, i64 1, i64 %87, %struct._IO_FILE* %90)
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %num_read, align 4
  %93 = icmp sle i32 %92, 0
  br i1 %93, label %94, label %95

; <label>:94                                      ; preds = %84
  br label %115

; <label>:95                                      ; preds = %84
  %96 = load %struct.mg_connection** %1, align 8
  %97 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %98 = load i32* %num_read, align 4
  %99 = sext i32 %98 to i64
  %100 = call i32 @mg_write(%struct.mg_connection* %96, i8* %97, i64 %99)
  store i32 %100, i32* %num_written, align 4
  %101 = load i32* %num_read, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %104

; <label>:103                                     ; preds = %95
  br label %115

; <label>:104                                     ; preds = %95
  %105 = load i32* %num_written, align 4
  %106 = sext i32 %105 to i64
  %107 = load %struct.mg_connection** %1, align 8
  %108 = getelementptr inbounds %struct.mg_connection* %107, i32 0, i32 6
  %109 = load i64* %108, align 8
  %110 = add nsw i64 %109, %106
  store i64 %110, i64* %108, align 8
  %111 = load i32* %num_written, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64* %4, align 8
  %114 = sub nsw i64 %113, %112
  store i64 %114, i64* %4, align 8
  br label %73

; <label>:115                                     ; preds = %103, %94, %73
  br label %116

; <label>:116                                     ; preds = %115, %62, %59
  br label %117

; <label>:117                                     ; preds = %116, %50
  ret void
}

declare i32 @pclose(%struct._IO_FILE*)

declare i32 @fseeko(%struct._IO_FILE*, i64, i32)

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*)

define internal i32 @mg_snprintf(%struct.mg_connection* %conn, i8* %buf, i64 %buflen, i8* %fmt, ...) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %n = alloca i32, align 4
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %buf, i8** %2, align 8
  store i64 %buflen, i64* %3, align 8
  store i8* %fmt, i8** %4, align 8
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = load %struct.mg_connection** %1, align 8
  %8 = load i8** %2, align 8
  %9 = load i64* %3, align 8
  %10 = load i8** %4, align 8
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %12 = call i32 @mg_vsnprintf(%struct.mg_connection* %7, i8* %8, i64 %9, i8* %10, %struct.__va_list_tag* %11)
  store i32 %12, i32* %n, align 4
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %14 = bitcast %struct.__va_list_tag* %13 to i8*
  call void @llvm.va_end(i8* %14)
  %15 = load i32* %n, align 4
  ret i32 %15
}

define internal i32 @mg_vsnprintf(%struct.mg_connection* %conn, i8* %buf, i64 %buflen, i8* %fmt, %struct.__va_list_tag* %ap) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__va_list_tag*, align 8
  %n = alloca i32, align 4
  store %struct.mg_connection* %conn, %struct.mg_connection** %2, align 8
  store i8* %buf, i8** %3, align 8
  store i64 %buflen, i64* %4, align 8
  store i8* %fmt, i8** %5, align 8
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %6, align 8
  %7 = load i64* %4, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  store i32 0, i32* %1
  br label %45

; <label>:10                                      ; preds = %0
  %11 = load i8** %3, align 8
  %12 = load i64* %4, align 8
  %13 = load i8** %5, align 8
  %14 = load %struct.__va_list_tag** %6, align 8
  %15 = call i32 @vsnprintf(i8* %11, i64 %12, i8* %13, %struct.__va_list_tag* %14) nounwind
  store i32 %15, i32* %n, align 4
  %16 = load i32* %n, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %10
  %19 = load %struct.mg_connection** %2, align 8
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %19, i8* getelementptr inbounds ([16 x i8]* @.str112, i32 0, i32 0))
  store i32 0, i32* %n, align 4
  br label %39

; <label>:20                                      ; preds = %10
  %21 = load i32* %n, align 4
  %22 = load i64* %4, align 8
  %23 = trunc i64 %22 to i32
  %24 = icmp sge i32 %21, %23
  br i1 %24, label %25, label %38

; <label>:25                                      ; preds = %20
  %26 = load %struct.mg_connection** %2, align 8
  %27 = load i32* %n, align 4
  %28 = icmp sgt i32 %27, 200
  br i1 %28, label %29, label %30

; <label>:29                                      ; preds = %25
  br label %32

; <label>:30                                      ; preds = %25
  %31 = load i32* %n, align 4
  br label %32

; <label>:32                                      ; preds = %30, %29
  %33 = phi i32 [ 200, %29 ], [ %31, %30 ]
  %34 = load i8** %3, align 8
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %26, i8* getelementptr inbounds ([36 x i8]* @.str113, i32 0, i32 0), i32 %33, i8* %34)
  %35 = load i64* %4, align 8
  %36 = trunc i64 %35 to i32
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %n, align 4
  br label %38

; <label>:38                                      ; preds = %32, %20
  br label %39

; <label>:39                                      ; preds = %38, %18
  %40 = load i32* %n, align 4
  %41 = sext i32 %40 to i64
  %42 = load i8** %3, align 8
  %43 = getelementptr inbounds i8* %42, i64 %41
  store i8 0, i8* %43
  %44 = load i32* %n, align 4
  store i32 %44, i32* %1
  br label %45

; <label>:45                                      ; preds = %39, %9
  %46 = load i32* %1
  ret i32 %46
}

declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) nounwind

declare i32 @fgetc(%struct._IO_FILE*)

define internal i8* @next_option(i8* %list, %struct.vec* %val, %struct.vec* %eq_val) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.vec*, align 8
  %3 = alloca %struct.vec*, align 8
  store i8* %list, i8** %1, align 8
  store %struct.vec* %val, %struct.vec** %2, align 8
  store %struct.vec* %eq_val, %struct.vec** %3, align 8
  %4 = load i8** %1, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %11, label %6

; <label>:6                                       ; preds = %0
  %7 = load i8** %1, align 8
  %8 = load i8* %7
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %6, %0
  store i8* null, i8** %1, align 8
  br label %104

; <label>:12                                      ; preds = %6
  %13 = load i8** %1, align 8
  %14 = load %struct.vec** %2, align 8
  %15 = getelementptr inbounds %struct.vec* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load %struct.vec** %2, align 8
  %17 = getelementptr inbounds %struct.vec* %16, i32 0, i32 0
  %18 = load i8** %17, align 8
  %19 = call i8* @strchr(i8* %18, i32 44) nounwind readonly
  store i8* %19, i8** %1, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %33

; <label>:21                                      ; preds = %12
  %22 = load i8** %1, align 8
  %23 = load %struct.vec** %2, align 8
  %24 = getelementptr inbounds %struct.vec* %23, i32 0, i32 0
  %25 = load i8** %24, align 8
  %26 = ptrtoint i8* %22 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = load %struct.vec** %2, align 8
  %30 = getelementptr inbounds %struct.vec* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load i8** %1, align 8
  %32 = getelementptr inbounds i8* %31, i32 1
  store i8* %32, i8** %1, align 8
  br label %51

; <label>:33                                      ; preds = %12
  %34 = load %struct.vec** %2, align 8
  %35 = getelementptr inbounds %struct.vec* %34, i32 0, i32 0
  %36 = load i8** %35, align 8
  %37 = load %struct.vec** %2, align 8
  %38 = getelementptr inbounds %struct.vec* %37, i32 0, i32 0
  %39 = load i8** %38, align 8
  %40 = call i64 @strlen(i8* %39) nounwind readonly
  %41 = getelementptr inbounds i8* %36, i64 %40
  store i8* %41, i8** %1, align 8
  %42 = load i8** %1, align 8
  %43 = load %struct.vec** %2, align 8
  %44 = getelementptr inbounds %struct.vec* %43, i32 0, i32 0
  %45 = load i8** %44, align 8
  %46 = ptrtoint i8* %42 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = load %struct.vec** %2, align 8
  %50 = getelementptr inbounds %struct.vec* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  br label %51

; <label>:51                                      ; preds = %33, %21
  %52 = load %struct.vec** %3, align 8
  %53 = icmp ne %struct.vec* %52, null
  br i1 %53, label %54, label %103

; <label>:54                                      ; preds = %51
  %55 = load %struct.vec** %3, align 8
  %56 = getelementptr inbounds %struct.vec* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.vec** %2, align 8
  %58 = getelementptr inbounds %struct.vec* %57, i32 0, i32 0
  %59 = load i8** %58, align 8
  %60 = load %struct.vec** %2, align 8
  %61 = getelementptr inbounds %struct.vec* %60, i32 0, i32 1
  %62 = load i64* %61, align 8
  %63 = call i8* @memchr(i8* %59, i32 61, i64 %62) nounwind readonly
  %64 = load %struct.vec** %3, align 8
  %65 = getelementptr inbounds %struct.vec* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.vec** %3, align 8
  %67 = getelementptr inbounds %struct.vec* %66, i32 0, i32 0
  %68 = load i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %102

; <label>:70                                      ; preds = %54
  %71 = load %struct.vec** %3, align 8
  %72 = getelementptr inbounds %struct.vec* %71, i32 0, i32 0
  %73 = load i8** %72, align 8
  %74 = getelementptr inbounds i8* %73, i32 1
  store i8* %74, i8** %72, align 8
  %75 = load %struct.vec** %2, align 8
  %76 = getelementptr inbounds %struct.vec* %75, i32 0, i32 0
  %77 = load i8** %76, align 8
  %78 = load %struct.vec** %2, align 8
  %79 = getelementptr inbounds %struct.vec* %78, i32 0, i32 1
  %80 = load i64* %79, align 8
  %81 = getelementptr inbounds i8* %77, i64 %80
  %82 = load %struct.vec** %3, align 8
  %83 = getelementptr inbounds %struct.vec* %82, i32 0, i32 0
  %84 = load i8** %83, align 8
  %85 = ptrtoint i8* %81 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = load %struct.vec** %3, align 8
  %89 = getelementptr inbounds %struct.vec* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.vec** %3, align 8
  %91 = getelementptr inbounds %struct.vec* %90, i32 0, i32 0
  %92 = load i8** %91, align 8
  %93 = load %struct.vec** %2, align 8
  %94 = getelementptr inbounds %struct.vec* %93, i32 0, i32 0
  %95 = load i8** %94, align 8
  %96 = ptrtoint i8* %92 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = sub nsw i64 %98, 1
  %100 = load %struct.vec** %2, align 8
  %101 = getelementptr inbounds %struct.vec* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  br label %102

; <label>:102                                     ; preds = %70, %54
  br label %103

; <label>:103                                     ; preds = %102, %51
  br label %104

; <label>:104                                     ; preds = %103, %11
  %105 = load i8** %1, align 8
  ret i8* %105
}

declare i32 @fcntl(i32, i32, ...)

declare i32 @fileno(%struct._IO_FILE*) nounwind

define internal i32 @is_file_in_memory(%struct.mg_connection* %conn, i8* %path, %struct.file* %filep) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.file*, align 8
  %size = alloca i64, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %path, i8** %2, align 8
  store %struct.file* %filep, %struct.file** %3, align 8
  store i64 0, i64* %size, align 8
  %4 = load %struct.mg_connection** %1, align 8
  %5 = getelementptr inbounds %struct.mg_connection* %4, i32 0, i32 1
  %6 = load %struct.mg_context** %5, align 8
  %7 = getelementptr inbounds %struct.mg_context* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.mg_callbacks* %7, i32 0, i32 7
  %9 = load i8* (%struct.mg_connection*, i8*, i64*)** %8, align 8
  %10 = icmp eq i8* (%struct.mg_connection*, i8*, i64*)* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  br label %22

; <label>:12                                      ; preds = %0
  %13 = load %struct.mg_connection** %1, align 8
  %14 = getelementptr inbounds %struct.mg_connection* %13, i32 0, i32 1
  %15 = load %struct.mg_context** %14, align 8
  %16 = getelementptr inbounds %struct.mg_context* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.mg_callbacks* %16, i32 0, i32 7
  %18 = load i8* (%struct.mg_connection*, i8*, i64*)** %17, align 8
  %19 = load %struct.mg_connection** %1, align 8
  %20 = load i8** %2, align 8
  %21 = call i8* %18(%struct.mg_connection* %19, i8* %20, i64* %size)
  br label %22

; <label>:22                                      ; preds = %12, %11
  %23 = phi i8* [ null, %11 ], [ %21, %12 ]
  %24 = load %struct.file** %3, align 8
  %25 = getelementptr inbounds %struct.file* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = icmp ne i8* %23, null
  br i1 %26, label %27, label %31

; <label>:27                                      ; preds = %22
  %28 = load i64* %size, align 8
  %29 = load %struct.file** %3, align 8
  %30 = getelementptr inbounds %struct.file* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  br label %31

; <label>:31                                      ; preds = %27, %22
  %32 = load %struct.file** %3, align 8
  %33 = getelementptr inbounds %struct.file* %32, i32 0, i32 4
  %34 = load i8** %33, align 8
  %35 = icmp ne i8* %34, null
  %36 = zext i1 %35 to i32
  ret i32 %36
}

define internal i32 @is_file_opened(%struct.file* %filep) nounwind uwtable {
  %1 = alloca %struct.file*, align 8
  store %struct.file* %filep, %struct.file** %1, align 8
  %2 = load %struct.file** %1, align 8
  %3 = getelementptr inbounds %struct.file* %2, i32 0, i32 4
  %4 = load i8** %3, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %11, label %6

; <label>:6                                       ; preds = %0
  %7 = load %struct.file** %1, align 8
  %8 = getelementptr inbounds %struct.file* %7, i32 0, i32 3
  %9 = load %struct._IO_FILE** %8, align 8
  %10 = icmp ne %struct._IO_FILE* %9, null
  br label %11

; <label>:11                                      ; preds = %6, %0
  %12 = phi i1 [ true, %0 ], [ %10, %6 ]
  %13 = zext i1 %12 to i32
  ret i32 %13
}

define internal void @prepare_cgi_environment(%struct.mg_connection* %conn, i8* %prog, %struct.cgi_env_block* %blk) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cgi_env_block*, align 8
  %ri = alloca %struct.mg_request_info*, align 8
  %s = alloca i8*, align 8
  %slash = alloca i8*, align 8
  %var_vec = alloca %struct.vec, align 8
  %p = alloca i8*, align 8
  %src_addr = alloca [50 x i8], align 16
  %i = alloca i32, align 4
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %prog, i8** %2, align 8
  store %struct.cgi_env_block* %blk, %struct.cgi_env_block** %3, align 8
  %4 = load %struct.mg_connection** %1, align 8
  %5 = getelementptr inbounds %struct.mg_connection* %4, i32 0, i32 0
  store %struct.mg_request_info* %5, %struct.mg_request_info** %ri, align 8
  %6 = load %struct.cgi_env_block** %3, align 8
  %7 = getelementptr inbounds %struct.cgi_env_block* %6, i32 0, i32 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.cgi_env_block** %3, align 8
  %9 = getelementptr inbounds %struct.cgi_env_block* %8, i32 0, i32 2
  store i32 0, i32* %9, align 4
  %10 = load %struct.mg_connection** %1, align 8
  %11 = load %struct.cgi_env_block** %3, align 8
  %12 = getelementptr inbounds %struct.cgi_env_block* %11, i32 0, i32 0
  store %struct.mg_connection* %10, %struct.mg_connection** %12, align 8
  %13 = getelementptr inbounds [50 x i8]* %src_addr, i32 0, i32 0
  %14 = load %struct.mg_connection** %1, align 8
  %15 = getelementptr inbounds %struct.mg_connection* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.socket* %15, i32 0, i32 2
  call void @sockaddr_to_string(i8* %13, i64 50, %union.usa* %16)
  %17 = load %struct.cgi_env_block** %3, align 8
  %18 = load %struct.mg_connection** %1, align 8
  %19 = getelementptr inbounds %struct.mg_connection* %18, i32 0, i32 1
  %20 = load %struct.mg_context** %19, align 8
  %21 = getelementptr inbounds %struct.mg_context* %20, i32 0, i32 2
  %22 = getelementptr inbounds [24 x i8*]* %21, i32 0, i64 5
  %23 = load i8** %22, align 8
  %24 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %17, i8* getelementptr inbounds ([15 x i8]* @.str140, i32 0, i32 0), i8* %23)
  %25 = load %struct.cgi_env_block** %3, align 8
  %26 = load %struct.mg_connection** %1, align 8
  %27 = getelementptr inbounds %struct.mg_connection* %26, i32 0, i32 1
  %28 = load %struct.mg_context** %27, align 8
  %29 = getelementptr inbounds %struct.mg_context* %28, i32 0, i32 2
  %30 = getelementptr inbounds [24 x i8*]* %29, i32 0, i64 17
  %31 = load i8** %30, align 8
  %32 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %25, i8* getelementptr inbounds ([15 x i8]* @.str141, i32 0, i32 0), i8* %31)
  %33 = load %struct.cgi_env_block** %3, align 8
  %34 = load %struct.mg_connection** %1, align 8
  %35 = getelementptr inbounds %struct.mg_connection* %34, i32 0, i32 1
  %36 = load %struct.mg_context** %35, align 8
  %37 = getelementptr inbounds %struct.mg_context* %36, i32 0, i32 2
  %38 = getelementptr inbounds [24 x i8*]* %37, i32 0, i64 17
  %39 = load i8** %38, align 8
  %40 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %33, i8* getelementptr inbounds ([17 x i8]* @.str142, i32 0, i32 0), i8* %39)
  %41 = load %struct.cgi_env_block** %3, align 8
  %42 = call i8* @mg_version()
  %43 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %41, i8* getelementptr inbounds ([22 x i8]* @.str143, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str144, i32 0, i32 0), i8* %42)
  %44 = load %struct.cgi_env_block** %3, align 8
  %45 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %44, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8]* @.str145, i32 0, i32 0))
  %46 = load %struct.cgi_env_block** %3, align 8
  %47 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %46, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str146, i32 0, i32 0))
  %48 = load %struct.cgi_env_block** %3, align 8
  %49 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %48, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str147, i32 0, i32 0))
  %50 = load %struct.cgi_env_block** %3, align 8
  %51 = load %struct.mg_connection** %1, align 8
  %52 = getelementptr inbounds %struct.mg_connection* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.socket* %52, i32 0, i32 1
  %54 = bitcast %union.usa* %53 to %struct.sockaddr_in*
  %55 = getelementptr inbounds %struct.sockaddr_in* %54, i32 0, i32 1
  %56 = load i16* %55, align 2
  %57 = call zeroext i16 @ntohs(i16 zeroext %56) nounwind readnone
  %58 = zext i16 %57 to i32
  %59 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %50, i8* getelementptr inbounds ([15 x i8]* @.str148, i32 0, i32 0), i32 %58)
  %60 = load %struct.cgi_env_block** %3, align 8
  %61 = load %struct.mg_request_info** %ri, align 8
  %62 = getelementptr inbounds %struct.mg_request_info* %61, i32 0, i32 0
  %63 = load i8** %62, align 8
  %64 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %60, i8* getelementptr inbounds ([18 x i8]* @.str149, i32 0, i32 0), i8* %63)
  %65 = load %struct.cgi_env_block** %3, align 8
  %66 = getelementptr inbounds [50 x i8]* %src_addr, i32 0, i32 0
  %67 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %65, i8* getelementptr inbounds ([15 x i8]* @.str150, i32 0, i32 0), i8* %66)
  %68 = load %struct.cgi_env_block** %3, align 8
  %69 = load %struct.mg_request_info** %ri, align 8
  %70 = getelementptr inbounds %struct.mg_request_info* %69, i32 0, i32 6
  %71 = load i32* %70, align 4
  %72 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %68, i8* getelementptr inbounds ([15 x i8]* @.str151, i32 0, i32 0), i32 %71)
  %73 = load %struct.cgi_env_block** %3, align 8
  %74 = load %struct.mg_request_info** %ri, align 8
  %75 = getelementptr inbounds %struct.mg_request_info* %74, i32 0, i32 1
  %76 = load i8** %75, align 8
  %77 = load %struct.mg_request_info** %ri, align 8
  %78 = getelementptr inbounds %struct.mg_request_info* %77, i32 0, i32 3
  %79 = load i8** %78, align 8
  %80 = icmp eq i8* %79, null
  %81 = select i1 %80, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str153, i32 0, i32 0)
  %82 = load %struct.mg_request_info** %ri, align 8
  %83 = getelementptr inbounds %struct.mg_request_info* %82, i32 0, i32 3
  %84 = load i8** %83, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %87

; <label>:86                                      ; preds = %0
  br label %91

; <label>:87                                      ; preds = %0
  %88 = load %struct.mg_request_info** %ri, align 8
  %89 = getelementptr inbounds %struct.mg_request_info* %88, i32 0, i32 3
  %90 = load i8** %89, align 8
  br label %91

; <label>:91                                      ; preds = %87, %86
  %92 = phi i8* [ getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), %86 ], [ %90, %87 ]
  %93 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %73, i8* getelementptr inbounds ([19 x i8]* @.str152, i32 0, i32 0), i8* %76, i8* %81, i8* %92)
  %94 = load %struct.mg_connection** %1, align 8
  %95 = getelementptr inbounds %struct.mg_connection* %94, i32 0, i32 10
  %96 = load i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %119

; <label>:98                                      ; preds = %91
  %99 = load %struct.cgi_env_block** %3, align 8
  %100 = load %struct.mg_request_info** %ri, align 8
  %101 = getelementptr inbounds %struct.mg_request_info* %100, i32 0, i32 1
  %102 = load i8** %101, align 8
  %103 = call i64 @strlen(i8* %102) nounwind readonly
  %104 = load %struct.mg_connection** %1, align 8
  %105 = getelementptr inbounds %struct.mg_connection* %104, i32 0, i32 10
  %106 = load i8** %105, align 8
  %107 = call i64 @strlen(i8* %106) nounwind readonly
  %108 = sub i64 %103, %107
  %109 = trunc i64 %108 to i32
  %110 = load %struct.mg_request_info** %ri, align 8
  %111 = getelementptr inbounds %struct.mg_request_info* %110, i32 0, i32 1
  %112 = load i8** %111, align 8
  %113 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %99, i8* getelementptr inbounds ([17 x i8]* @.str154, i32 0, i32 0), i32 %109, i8* %112)
  %114 = load %struct.cgi_env_block** %3, align 8
  %115 = load %struct.mg_connection** %1, align 8
  %116 = getelementptr inbounds %struct.mg_connection* %115, i32 0, i32 10
  %117 = load i8** %116, align 8
  %118 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %114, i8* getelementptr inbounds ([13 x i8]* @.str155, i32 0, i32 0), i8* %117)
  br label %153

; <label>:119                                     ; preds = %91
  %120 = load i8** %2, align 8
  %121 = call i8* @strrchr(i8* %120, i32 47) nounwind readonly
  store i8* %121, i8** %s, align 8
  %122 = load %struct.mg_request_info** %ri, align 8
  %123 = getelementptr inbounds %struct.mg_request_info* %122, i32 0, i32 1
  %124 = load i8** %123, align 8
  %125 = call i8* @strrchr(i8* %124, i32 47) nounwind readonly
  store i8* %125, i8** %slash, align 8
  %126 = load %struct.cgi_env_block** %3, align 8
  %127 = load i8** %slash, align 8
  %128 = icmp eq i8* %127, null
  br i1 %128, label %129, label %130

; <label>:129                                     ; preds = %119
  br label %139

; <label>:130                                     ; preds = %119
  %131 = load i8** %slash, align 8
  %132 = load %struct.mg_request_info** %ri, align 8
  %133 = getelementptr inbounds %struct.mg_request_info* %132, i32 0, i32 1
  %134 = load i8** %133, align 8
  %135 = ptrtoint i8* %131 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  %138 = trunc i64 %137 to i32
  br label %139

; <label>:139                                     ; preds = %130, %129
  %140 = phi i32 [ 0, %129 ], [ %138, %130 ]
  %141 = load %struct.mg_request_info** %ri, align 8
  %142 = getelementptr inbounds %struct.mg_request_info* %141, i32 0, i32 1
  %143 = load i8** %142, align 8
  %144 = load i8** %s, align 8
  %145 = icmp eq i8* %144, null
  br i1 %145, label %146, label %148

; <label>:146                                     ; preds = %139
  %147 = load i8** %2, align 8
  br label %150

; <label>:148                                     ; preds = %139
  %149 = load i8** %s, align 8
  br label %150

; <label>:150                                     ; preds = %148, %146
  %151 = phi i8* [ %147, %146 ], [ %149, %148 ]
  %152 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %126, i8* getelementptr inbounds ([19 x i8]* @.str156, i32 0, i32 0), i32 %140, i8* %143, i8* %151)
  br label %153

; <label>:153                                     ; preds = %150, %98
  %154 = load %struct.cgi_env_block** %3, align 8
  %155 = load i8** %2, align 8
  %156 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %154, i8* getelementptr inbounds ([19 x i8]* @.str157, i32 0, i32 0), i8* %155)
  %157 = load %struct.cgi_env_block** %3, align 8
  %158 = load i8** %2, align 8
  %159 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %157, i8* getelementptr inbounds ([19 x i8]* @.str158, i32 0, i32 0), i8* %158)
  %160 = load %struct.cgi_env_block** %3, align 8
  %161 = load %struct.mg_connection** %1, align 8
  %162 = getelementptr inbounds %struct.mg_connection* %161, i32 0, i32 2
  %163 = load %struct.ssl_st** %162, align 8
  %164 = icmp eq %struct.ssl_st* %163, null
  %165 = select i1 %164, i8* getelementptr inbounds ([4 x i8]* @.str160, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str161, i32 0, i32 0)
  %166 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %160, i8* getelementptr inbounds ([9 x i8]* @.str159, i32 0, i32 0), i8* %165)
  %167 = load %struct.mg_connection** %1, align 8
  %168 = call i8* @mg_get_header(%struct.mg_connection* %167, i8* getelementptr inbounds ([13 x i8]* @.str18, i32 0, i32 0))
  store i8* %168, i8** %s, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %174

; <label>:170                                     ; preds = %153
  %171 = load %struct.cgi_env_block** %3, align 8
  %172 = load i8** %s, align 8
  %173 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %171, i8* getelementptr inbounds ([16 x i8]* @.str162, i32 0, i32 0), i8* %172)
  br label %174

; <label>:174                                     ; preds = %170, %153
  %175 = load %struct.mg_request_info** %ri, align 8
  %176 = getelementptr inbounds %struct.mg_request_info* %175, i32 0, i32 3
  %177 = load i8** %176, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %185

; <label>:179                                     ; preds = %174
  %180 = load %struct.cgi_env_block** %3, align 8
  %181 = load %struct.mg_request_info** %ri, align 8
  %182 = getelementptr inbounds %struct.mg_request_info* %181, i32 0, i32 3
  %183 = load i8** %182, align 8
  %184 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %180, i8* getelementptr inbounds ([16 x i8]* @.str163, i32 0, i32 0), i8* %183)
  br label %185

; <label>:185                                     ; preds = %179, %174
  %186 = load %struct.mg_connection** %1, align 8
  %187 = call i8* @mg_get_header(%struct.mg_connection* %186, i8* getelementptr inbounds ([15 x i8]* @.str164, i32 0, i32 0))
  store i8* %187, i8** %s, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %193

; <label>:189                                     ; preds = %185
  %190 = load %struct.cgi_env_block** %3, align 8
  %191 = load i8** %s, align 8
  %192 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %190, i8* getelementptr inbounds ([18 x i8]* @.str165, i32 0, i32 0), i8* %191)
  br label %193

; <label>:193                                     ; preds = %189, %185
  %194 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8]* @.str166, i32 0, i32 0)) nounwind
  store i8* %194, i8** %s, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %200

; <label>:196                                     ; preds = %193
  %197 = load %struct.cgi_env_block** %3, align 8
  %198 = load i8** %s, align 8
  %199 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %197, i8* getelementptr inbounds ([8 x i8]* @.str167, i32 0, i32 0), i8* %198)
  br label %200

; <label>:200                                     ; preds = %196, %193
  %201 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8]* @.str168, i32 0, i32 0)) nounwind
  store i8* %201, i8** %s, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %207

; <label>:203                                     ; preds = %200
  %204 = load %struct.cgi_env_block** %3, align 8
  %205 = load i8** %s, align 8
  %206 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %204, i8* getelementptr inbounds ([19 x i8]* @.str169, i32 0, i32 0), i8* %205)
  br label %207

; <label>:207                                     ; preds = %203, %200
  %208 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8]* @.str170, i32 0, i32 0)) nounwind
  store i8* %208, i8** %s, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %214

; <label>:210                                     ; preds = %207
  %211 = load %struct.cgi_env_block** %3, align 8
  %212 = load i8** %s, align 8
  %213 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %211, i8* getelementptr inbounds ([11 x i8]* @.str171, i32 0, i32 0), i8* %212)
  br label %214

; <label>:214                                     ; preds = %210, %207
  %215 = load %struct.mg_request_info** %ri, align 8
  %216 = getelementptr inbounds %struct.mg_request_info* %215, i32 0, i32 4
  %217 = load i8** %216, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %227

; <label>:219                                     ; preds = %214
  %220 = load %struct.cgi_env_block** %3, align 8
  %221 = load %struct.mg_request_info** %ri, align 8
  %222 = getelementptr inbounds %struct.mg_request_info* %221, i32 0, i32 4
  %223 = load i8** %222, align 8
  %224 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %220, i8* getelementptr inbounds ([15 x i8]* @.str172, i32 0, i32 0), i8* %223)
  %225 = load %struct.cgi_env_block** %3, align 8
  %226 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %225, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str173, i32 0, i32 0))
  br label %227

; <label>:227                                     ; preds = %219, %214
  store i32 0, i32* %i, align 4
  br label %228

; <label>:228                                     ; preds = %281, %227
  %229 = load i32* %i, align 4
  %230 = load %struct.mg_request_info** %ri, align 8
  %231 = getelementptr inbounds %struct.mg_request_info* %230, i32 0, i32 10
  %232 = load i32* %231, align 4
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %284

; <label>:234                                     ; preds = %228
  %235 = load %struct.cgi_env_block** %3, align 8
  %236 = load i32* %i, align 4
  %237 = sext i32 %236 to i64
  %238 = load %struct.mg_request_info** %ri, align 8
  %239 = getelementptr inbounds %struct.mg_request_info* %238, i32 0, i32 11
  %240 = getelementptr inbounds [64 x %struct.mg_header]* %239, i32 0, i64 %237
  %241 = getelementptr inbounds %struct.mg_header* %240, i32 0, i32 0
  %242 = load i8** %241, align 8
  %243 = load i32* %i, align 4
  %244 = sext i32 %243 to i64
  %245 = load %struct.mg_request_info** %ri, align 8
  %246 = getelementptr inbounds %struct.mg_request_info* %245, i32 0, i32 11
  %247 = getelementptr inbounds [64 x %struct.mg_header]* %246, i32 0, i64 %244
  %248 = getelementptr inbounds %struct.mg_header* %247, i32 0, i32 1
  %249 = load i8** %248, align 8
  %250 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %235, i8* getelementptr inbounds ([11 x i8]* @.str174, i32 0, i32 0), i8* %242, i8* %249)
  store i8* %250, i8** %p, align 8
  br label %251

; <label>:251                                     ; preds = %277, %234
  %252 = load i8** %p, align 8
  %253 = load i8* %252
  %254 = sext i8 %253 to i32
  %255 = icmp ne i32 %254, 61
  br i1 %255, label %256, label %261

; <label>:256                                     ; preds = %251
  %257 = load i8** %p, align 8
  %258 = load i8* %257
  %259 = sext i8 %258 to i32
  %260 = icmp ne i32 %259, 0
  br label %261

; <label>:261                                     ; preds = %256, %251
  %262 = phi i1 [ false, %251 ], [ %260, %256 ]
  br i1 %262, label %263, label %280

; <label>:263                                     ; preds = %261
  %264 = load i8** %p, align 8
  %265 = load i8* %264
  %266 = sext i8 %265 to i32
  %267 = icmp eq i32 %266, 45
  br i1 %267, label %268, label %270

; <label>:268                                     ; preds = %263
  %269 = load i8** %p, align 8
  store i8 95, i8* %269
  br label %270

; <label>:270                                     ; preds = %268, %263
  %271 = load i8** %p, align 8
  %272 = load i8* %271
  %273 = zext i8 %272 to i32
  %274 = call i32 @toupper(i32 %273) nounwind
  %275 = trunc i32 %274 to i8
  %276 = load i8** %p, align 8
  store i8 %275, i8* %276
  br label %277

; <label>:277                                     ; preds = %270
  %278 = load i8** %p, align 8
  %279 = getelementptr inbounds i8* %278, i32 1
  store i8* %279, i8** %p, align 8
  br label %251

; <label>:280                                     ; preds = %261
  br label %281

; <label>:281                                     ; preds = %280
  %282 = load i32* %i, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %i, align 4
  br label %228

; <label>:284                                     ; preds = %228
  %285 = load %struct.mg_connection** %1, align 8
  %286 = getelementptr inbounds %struct.mg_connection* %285, i32 0, i32 1
  %287 = load %struct.mg_context** %286, align 8
  %288 = getelementptr inbounds %struct.mg_context* %287, i32 0, i32 2
  %289 = getelementptr inbounds [24 x i8*]* %288, i32 0, i64 1
  %290 = load i8** %289, align 8
  store i8* %290, i8** %s, align 8
  br label %291

; <label>:291                                     ; preds = %295, %284
  %292 = load i8** %s, align 8
  %293 = call i8* @next_option(i8* %292, %struct.vec* %var_vec, %struct.vec* null)
  store i8* %293, i8** %s, align 8
  %294 = icmp ne i8* %293, null
  br i1 %294, label %295, label %303

; <label>:295                                     ; preds = %291
  %296 = load %struct.cgi_env_block** %3, align 8
  %297 = getelementptr inbounds %struct.vec* %var_vec, i32 0, i32 1
  %298 = load i64* %297, align 8
  %299 = trunc i64 %298 to i32
  %300 = getelementptr inbounds %struct.vec* %var_vec, i32 0, i32 0
  %301 = load i8** %300, align 8
  %302 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %296, i8* getelementptr inbounds ([5 x i8]* @.str175, i32 0, i32 0), i32 %299, i8* %301)
  br label %291

; <label>:303                                     ; preds = %291
  %304 = load %struct.cgi_env_block** %3, align 8
  %305 = getelementptr inbounds %struct.cgi_env_block* %304, i32 0, i32 4
  %306 = load i32* %305, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %305, align 4
  %308 = sext i32 %306 to i64
  %309 = load %struct.cgi_env_block** %3, align 8
  %310 = getelementptr inbounds %struct.cgi_env_block* %309, i32 0, i32 3
  %311 = getelementptr inbounds [64 x i8*]* %310, i32 0, i64 %308
  store i8* null, i8** %311, align 8
  %312 = load %struct.cgi_env_block** %3, align 8
  %313 = getelementptr inbounds %struct.cgi_env_block* %312, i32 0, i32 2
  %314 = load i32* %313, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %313, align 4
  %316 = sext i32 %314 to i64
  %317 = load %struct.cgi_env_block** %3, align 8
  %318 = getelementptr inbounds %struct.cgi_env_block* %317, i32 0, i32 1
  %319 = getelementptr inbounds [4096 x i8]* %318, i32 0, i64 %316
  store i8 0, i8* %319, align 1
  %320 = load %struct.cgi_env_block** %3, align 8
  %321 = getelementptr inbounds %struct.cgi_env_block* %320, i32 0, i32 4
  %322 = load i32* %321, align 4
  %323 = icmp slt i32 %322, 64
  br i1 %323, label %324, label %325

; <label>:324                                     ; preds = %303
  br label %327

; <label>:325                                     ; preds = %303
  call void @__assert_fail(i8* getelementptr inbounds ([62 x i8]* @.str176, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str4, i32 0, i32 0), i32 3388, i8* getelementptr inbounds ([91 x i8]* @__PRETTY_FUNCTION__.prepare_cgi_environment, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %327

; <label>:327                                     ; preds = %326, %324
  %328 = load %struct.cgi_env_block** %3, align 8
  %329 = getelementptr inbounds %struct.cgi_env_block* %328, i32 0, i32 2
  %330 = load i32* %329, align 4
  %331 = icmp sgt i32 %330, 0
  br i1 %331, label %332, label %333

; <label>:332                                     ; preds = %327
  br label %335

; <label>:333                                     ; preds = %327
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8]* @.str177, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str4, i32 0, i32 0), i32 3389, i8* getelementptr inbounds ([91 x i8]* @__PRETTY_FUNCTION__.prepare_cgi_environment, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %335

; <label>:335                                     ; preds = %334, %332
  %336 = load %struct.cgi_env_block** %3, align 8
  %337 = getelementptr inbounds %struct.cgi_env_block* %336, i32 0, i32 2
  %338 = load i32* %337, align 4
  %339 = icmp slt i32 %338, 4096
  br i1 %339, label %340, label %341

; <label>:340                                     ; preds = %335
  br label %343

; <label>:341                                     ; preds = %335
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8]* @.str178, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str4, i32 0, i32 0), i32 3390, i8* getelementptr inbounds ([91 x i8]* @__PRETTY_FUNCTION__.prepare_cgi_environment, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %343

; <label>:343                                     ; preds = %342, %340
  ret void
}

declare i32 @pipe(i32*) nounwind

define internal i32 @spawn_process(%struct.mg_connection* %conn, i8* %prog, i8* %envblk, i8** %envp, i32 %fdin, i32 %fdout, i8* %dir) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %pid = alloca i32, align 4
  %interp = alloca i8*, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %prog, i8** %2, align 8
  store i8* %envblk, i8** %3, align 8
  store i8** %envp, i8*** %4, align 8
  store i32 %fdin, i32* %5, align 4
  store i32 %fdout, i32* %6, align 4
  store i8* %dir, i8** %7, align 8
  %8 = load i8** %3, align 8
  %9 = call i32 @fork() nounwind
  store i32 %9, i32* %pid, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %17

; <label>:11                                      ; preds = %0
  %12 = load %struct.mg_connection** %1, align 8
  %13 = load i8** @http_500_error, align 8
  %14 = call i32* @__errno_location() nounwind readnone
  %15 = load i32* %14
  %16 = call i8* @strerror(i32 %15) nounwind
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %12, i32 500, i8* %13, i8* getelementptr inbounds ([11 x i8]* @.str134, i32 0, i32 0), i8* %16)
  br label %91

; <label>:17                                      ; preds = %0
  %18 = load i32* %pid, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %90

; <label>:20                                      ; preds = %17
  %21 = load i8** %7, align 8
  %22 = call i32 @chdir(i8* %21) nounwind
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

; <label>:24                                      ; preds = %20
  %25 = load %struct.mg_connection** %1, align 8
  %26 = load i8** %7, align 8
  %27 = call i32* @__errno_location() nounwind readnone
  %28 = load i32* %27
  %29 = call i8* @strerror(i32 %28) nounwind
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %25, i8* getelementptr inbounds ([18 x i8]* @.str135, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @__func__.spawn_process, i32 0, i32 0), i8* %26, i8* %29)
  br label %89

; <label>:30                                      ; preds = %20
  %31 = load i32* %5, align 4
  %32 = call i32 @dup2(i32 %31, i32 0) nounwind
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %40

; <label>:34                                      ; preds = %30
  %35 = load %struct.mg_connection** %1, align 8
  %36 = load i32* %5, align 4
  %37 = call i32* @__errno_location() nounwind readnone
  %38 = load i32* %37
  %39 = call i8* @strerror(i32 %38) nounwind
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %35, i8* getelementptr inbounds ([20 x i8]* @.str136, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @__func__.spawn_process, i32 0, i32 0), i32 %36, i8* %39)
  br label %88

; <label>:40                                      ; preds = %30
  %41 = load i32* %6, align 4
  %42 = call i32 @dup2(i32 %41, i32 1) nounwind
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %50

; <label>:44                                      ; preds = %40
  %45 = load %struct.mg_connection** %1, align 8
  %46 = load i32* %6, align 4
  %47 = call i32* @__errno_location() nounwind readnone
  %48 = load i32* %47
  %49 = call i8* @strerror(i32 %48) nounwind
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %45, i8* getelementptr inbounds ([20 x i8]* @.str137, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @__func__.spawn_process, i32 0, i32 0), i32 %46, i8* %49)
  br label %87

; <label>:50                                      ; preds = %40
  %51 = load i32* %5, align 4
  %52 = call i32 @close(i32 %51)
  %53 = load i32* %6, align 4
  %54 = call i32 @close(i32 %53)
  %55 = call void (i32)* (i32, void (i32)*)* @__sysv_signal(i32 17, void (i32)* null) nounwind
  %56 = load %struct.mg_connection** %1, align 8
  %57 = getelementptr inbounds %struct.mg_connection* %56, i32 0, i32 1
  %58 = load %struct.mg_context** %57, align 8
  %59 = getelementptr inbounds %struct.mg_context* %58, i32 0, i32 2
  %60 = getelementptr inbounds [24 x i8*]* %59, i32 0, i64 3
  %61 = load i8** %60, align 8
  store i8* %61, i8** %interp, align 8
  %62 = load i8** %interp, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %74

; <label>:64                                      ; preds = %50
  %65 = load i8** %2, align 8
  %66 = load i8** %2, align 8
  %67 = load i8*** %4, align 8
  %68 = call i32 (i8*, i8*, ...)* @execle(i8* %65, i8* %66, i8* null, i8** %67) nounwind
  %69 = load %struct.mg_connection** %1, align 8
  %70 = load i8** %2, align 8
  %71 = call i32* @__errno_location() nounwind readnone
  %72 = load i32* %71
  %73 = call i8* @strerror(i32 %72) nounwind
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %69, i8* getelementptr inbounds ([19 x i8]* @.str138, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @__func__.spawn_process, i32 0, i32 0), i8* %70, i8* %73)
  br label %86

; <label>:74                                      ; preds = %50
  %75 = load i8** %interp, align 8
  %76 = load i8** %interp, align 8
  %77 = load i8** %2, align 8
  %78 = load i8*** %4, align 8
  %79 = call i32 (i8*, i8*, ...)* @execle(i8* %75, i8* %76, i8* %77, i8* null, i8** %78) nounwind
  %80 = load %struct.mg_connection** %1, align 8
  %81 = load i8** %interp, align 8
  %82 = load i8** %2, align 8
  %83 = call i32* @__errno_location() nounwind readnone
  %84 = load i32* %83
  %85 = call i8* @strerror(i32 %84) nounwind
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %80, i8* getelementptr inbounds ([22 x i8]* @.str139, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @__func__.spawn_process, i32 0, i32 0), i8* %81, i8* %82, i8* %85)
  br label %86

; <label>:86                                      ; preds = %74, %64
  br label %87

; <label>:87                                      ; preds = %86, %44
  br label %88

; <label>:88                                      ; preds = %87, %34
  br label %89

; <label>:89                                      ; preds = %88, %24
  call void @exit(i32 1) noreturn nounwind
  unreachable

; <label>:90                                      ; preds = %17
  br label %91

; <label>:91                                      ; preds = %90, %11
  %92 = load i32* %pid, align 4
  ret i32 %92
}

define internal void @set_close_on_exec(i32 %fd) nounwind uwtable {
  %1 = alloca i32, align 4
  store i32 %fd, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = call i32 (i32, i32, ...)* @fcntl(i32 %2, i32 2, i32 1)
  ret void
}

declare %struct._IO_FILE* @fdopen(i32, i8*) nounwind

declare void @setbuf(%struct._IO_FILE*, i8*) nounwind

define internal i32 @forward_body_data(%struct.mg_connection* %conn, %struct._IO_FILE* %fp, i32 %sock, %struct.ssl_st* %ssl) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssl_st*, align 8
  %expect = alloca i8*, align 8
  %body = alloca i8*, align 8
  %buf = alloca [8192 x i8], align 16
  %to_read = alloca i32, align 4
  %nread = alloca i32, align 4
  %buffered_len = alloca i32, align 4
  %success = alloca i32, align 4
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %2, align 8
  store i32 %sock, i32* %3, align 4
  store %struct.ssl_st* %ssl, %struct.ssl_st** %4, align 8
  store i32 0, i32* %success, align 4
  %5 = load %struct.mg_connection** %1, align 8
  %6 = call i8* @mg_get_header(%struct.mg_connection* %5, i8* getelementptr inbounds ([7 x i8]* @.str126, i32 0, i32 0))
  store i8* %6, i8** %expect, align 8
  %7 = load %struct._IO_FILE** %2, align 8
  %8 = icmp ne %struct._IO_FILE* %7, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  br label %12

; <label>:10                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8]* @.str127, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str4, i32 0, i32 0), i32 3170, i8* getelementptr inbounds ([69 x i8]* @__PRETTY_FUNCTION__.forward_body_data, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %12

; <label>:12                                      ; preds = %11, %9
  %13 = load %struct.mg_connection** %1, align 8
  %14 = getelementptr inbounds %struct.mg_connection* %13, i32 0, i32 7
  %15 = load i64* %14, align 8
  %16 = icmp eq i64 %15, -1
  br i1 %16, label %17, label %19

; <label>:17                                      ; preds = %12
  %18 = load %struct.mg_connection** %1, align 8
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %18, i32 411, i8* getelementptr inbounds ([16 x i8]* @.str128, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0))
  br label %177

; <label>:19                                      ; preds = %12
  %20 = load i8** %expect, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %28

; <label>:22                                      ; preds = %19
  %23 = load i8** %expect, align 8
  %24 = call i32 @mg_strcasecmp(i8* %23, i8* getelementptr inbounds ([13 x i8]* @.str129, i32 0, i32 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

; <label>:26                                      ; preds = %22
  %27 = load %struct.mg_connection** %1, align 8
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %27, i32 417, i8* getelementptr inbounds ([19 x i8]* @.str130, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0))
  br label %176

; <label>:28                                      ; preds = %22, %19
  %29 = load i8** %expect, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

; <label>:31                                      ; preds = %28
  %32 = load %struct.mg_connection** %1, align 8
  %33 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %32, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8]* @.str131, i32 0, i32 0))
  br label %34

; <label>:34                                      ; preds = %31, %28
  %35 = load %struct.mg_connection** %1, align 8
  %36 = getelementptr inbounds %struct.mg_connection* %35, i32 0, i32 9
  %37 = load i8** %36, align 8
  %38 = load %struct.mg_connection** %1, align 8
  %39 = getelementptr inbounds %struct.mg_connection* %38, i32 0, i32 13
  %40 = load i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8* %37, i64 %41
  %43 = load %struct.mg_connection** %1, align 8
  %44 = getelementptr inbounds %struct.mg_connection* %43, i32 0, i32 8
  %45 = load i64* %44, align 8
  %46 = getelementptr inbounds i8* %42, i64 %45
  store i8* %46, i8** %body, align 8
  %47 = load %struct.mg_connection** %1, align 8
  %48 = getelementptr inbounds %struct.mg_connection* %47, i32 0, i32 14
  %49 = load i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.mg_connection** %1, align 8
  %52 = getelementptr inbounds %struct.mg_connection* %51, i32 0, i32 9
  %53 = load i8** %52, align 8
  %54 = getelementptr inbounds i8* %53, i64 %50
  %55 = load i8** %body, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %buffered_len, align 4
  %60 = load i32* %buffered_len, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %63

; <label>:62                                      ; preds = %34
  br label %65

; <label>:63                                      ; preds = %34
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8]* @.str132, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str4, i32 0, i32 0), i32 3183, i8* getelementptr inbounds ([69 x i8]* @__PRETTY_FUNCTION__.forward_body_data, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %65

; <label>:65                                      ; preds = %64, %62
  %66 = load %struct.mg_connection** %1, align 8
  %67 = getelementptr inbounds %struct.mg_connection* %66, i32 0, i32 8
  %68 = load i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

; <label>:70                                      ; preds = %65
  br label %73

; <label>:71                                      ; preds = %65
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8]* @.str133, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str4, i32 0, i32 0), i32 3184, i8* getelementptr inbounds ([69 x i8]* @__PRETTY_FUNCTION__.forward_body_data, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %73

; <label>:73                                      ; preds = %72, %70
  %74 = load i32* %buffered_len, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %102

; <label>:76                                      ; preds = %73
  %77 = load i32* %buffered_len, align 4
  %78 = sext i32 %77 to i64
  %79 = load %struct.mg_connection** %1, align 8
  %80 = getelementptr inbounds %struct.mg_connection* %79, i32 0, i32 7
  %81 = load i64* %80, align 8
  %82 = icmp sgt i64 %78, %81
  br i1 %82, label %83, label %88

; <label>:83                                      ; preds = %76
  %84 = load %struct.mg_connection** %1, align 8
  %85 = getelementptr inbounds %struct.mg_connection* %84, i32 0, i32 7
  %86 = load i64* %85, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %buffered_len, align 4
  br label %88

; <label>:88                                      ; preds = %83, %76
  %89 = load %struct._IO_FILE** %2, align 8
  %90 = load i32* %3, align 4
  %91 = load %struct.ssl_st** %4, align 8
  %92 = load i8** %body, align 8
  %93 = load i32* %buffered_len, align 4
  %94 = sext i32 %93 to i64
  %95 = call i64 @push(%struct._IO_FILE* %89, i32 %90, %struct.ssl_st* %91, i8* %92, i64 %94)
  %96 = load i32* %buffered_len, align 4
  %97 = sext i32 %96 to i64
  %98 = load %struct.mg_connection** %1, align 8
  %99 = getelementptr inbounds %struct.mg_connection* %98, i32 0, i32 8
  %100 = load i64* %99, align 8
  %101 = add nsw i64 %100, %97
  store i64 %101, i64* %99, align 8
  br label %102

; <label>:102                                     ; preds = %88, %73
  store i32 0, i32* %nread, align 4
  br label %103

; <label>:103                                     ; preds = %150, %102
  %104 = load %struct.mg_connection** %1, align 8
  %105 = getelementptr inbounds %struct.mg_connection* %104, i32 0, i32 8
  %106 = load i64* %105, align 8
  %107 = load %struct.mg_connection** %1, align 8
  %108 = getelementptr inbounds %struct.mg_connection* %107, i32 0, i32 7
  %109 = load i64* %108, align 8
  %110 = icmp slt i64 %106, %109
  br i1 %110, label %111, label %157

; <label>:111                                     ; preds = %103
  store i32 8192, i32* %to_read, align 4
  %112 = load i32* %to_read, align 4
  %113 = sext i32 %112 to i64
  %114 = load %struct.mg_connection** %1, align 8
  %115 = getelementptr inbounds %struct.mg_connection* %114, i32 0, i32 7
  %116 = load i64* %115, align 8
  %117 = load %struct.mg_connection** %1, align 8
  %118 = getelementptr inbounds %struct.mg_connection* %117, i32 0, i32 8
  %119 = load i64* %118, align 8
  %120 = sub nsw i64 %116, %119
  %121 = icmp sgt i64 %113, %120
  br i1 %121, label %122, label %131

; <label>:122                                     ; preds = %111
  %123 = load %struct.mg_connection** %1, align 8
  %124 = getelementptr inbounds %struct.mg_connection* %123, i32 0, i32 7
  %125 = load i64* %124, align 8
  %126 = load %struct.mg_connection** %1, align 8
  %127 = getelementptr inbounds %struct.mg_connection* %126, i32 0, i32 8
  %128 = load i64* %127, align 8
  %129 = sub nsw i64 %125, %128
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %to_read, align 4
  br label %131

; <label>:131                                     ; preds = %122, %111
  %132 = load %struct.mg_connection** %1, align 8
  %133 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %134 = load i32* %to_read, align 4
  %135 = call i32 @pull(%struct._IO_FILE* null, %struct.mg_connection* %132, i8* %133, i32 %134)
  store i32 %135, i32* %nread, align 4
  %136 = load i32* %nread, align 4
  %137 = icmp sle i32 %136, 0
  br i1 %137, label %149, label %138

; <label>:138                                     ; preds = %131
  %139 = load %struct._IO_FILE** %2, align 8
  %140 = load i32* %3, align 4
  %141 = load %struct.ssl_st** %4, align 8
  %142 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %143 = load i32* %nread, align 4
  %144 = sext i32 %143 to i64
  %145 = call i64 @push(%struct._IO_FILE* %139, i32 %140, %struct.ssl_st* %141, i8* %142, i64 %144)
  %146 = load i32* %nread, align 4
  %147 = sext i32 %146 to i64
  %148 = icmp ne i64 %145, %147
  br i1 %148, label %149, label %150

; <label>:149                                     ; preds = %138, %131
  br label %157

; <label>:150                                     ; preds = %138
  %151 = load i32* %nread, align 4
  %152 = sext i32 %151 to i64
  %153 = load %struct.mg_connection** %1, align 8
  %154 = getelementptr inbounds %struct.mg_connection* %153, i32 0, i32 8
  %155 = load i64* %154, align 8
  %156 = add nsw i64 %155, %152
  store i64 %156, i64* %154, align 8
  br label %103

; <label>:157                                     ; preds = %149, %103
  %158 = load %struct.mg_connection** %1, align 8
  %159 = getelementptr inbounds %struct.mg_connection* %158, i32 0, i32 8
  %160 = load i64* %159, align 8
  %161 = load %struct.mg_connection** %1, align 8
  %162 = getelementptr inbounds %struct.mg_connection* %161, i32 0, i32 7
  %163 = load i64* %162, align 8
  %164 = icmp eq i64 %160, %163
  br i1 %164, label %165, label %169

; <label>:165                                     ; preds = %157
  %166 = load i32* %nread, align 4
  %167 = icmp sge i32 %166, 0
  %168 = zext i1 %167 to i32
  store i32 %168, i32* %success, align 4
  br label %169

; <label>:169                                     ; preds = %165, %157
  %170 = load i32* %success, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

; <label>:172                                     ; preds = %169
  %173 = load %struct.mg_connection** %1, align 8
  %174 = load i8** @http_500_error, align 8
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %173, i32 577, i8* %174, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0))
  br label %175

; <label>:175                                     ; preds = %172, %169
  br label %176

; <label>:176                                     ; preds = %175, %26
  br label %177

; <label>:177                                     ; preds = %176, %17
  %178 = load i32* %success, align 4
  ret i32 %178
}

define internal i32 @read_request(%struct._IO_FILE* %fp, %struct.mg_connection* %conn, i8* %buf, i32 %bufsiz, i32* %nread) nounwind uwtable {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %request_len = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %1, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %2, align 8
  store i8* %buf, i8** %3, align 8
  store i32 %bufsiz, i32* %4, align 4
  store i32* %nread, i32** %5, align 8
  store i32 0, i32* %n, align 4
  %6 = load i8** %3, align 8
  %7 = load i32** %5, align 8
  %8 = load i32* %7
  %9 = call i32 @get_request_len(i8* %6, i32 %8)
  store i32 %9, i32* %request_len, align 4
  br label %10

; <label>:10                                      ; preds = %53, %0
  %11 = load %struct.mg_connection** %2, align 8
  %12 = getelementptr inbounds %struct.mg_connection* %11, i32 0, i32 1
  %13 = load %struct.mg_context** %12, align 8
  %14 = getelementptr inbounds %struct.mg_context* %13, i32 0, i32 0
  %15 = load volatile i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %39

; <label>:17                                      ; preds = %10
  %18 = load i32** %5, align 8
  %19 = load i32* %18
  %20 = load i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %39

; <label>:22                                      ; preds = %17
  %23 = load i32* %request_len, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %39

; <label>:25                                      ; preds = %22
  %26 = load %struct._IO_FILE** %1, align 8
  %27 = load %struct.mg_connection** %2, align 8
  %28 = load i8** %3, align 8
  %29 = load i32** %5, align 8
  %30 = load i32* %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8* %28, i64 %31
  %33 = load i32* %4, align 4
  %34 = load i32** %5, align 8
  %35 = load i32* %34
  %36 = sub nsw i32 %33, %35
  %37 = call i32 @pull(%struct._IO_FILE* %26, %struct.mg_connection* %27, i8* %32, i32 %36)
  store i32 %37, i32* %n, align 4
  %38 = icmp sgt i32 %37, 0
  br label %39

; <label>:39                                      ; preds = %25, %22, %17, %10
  %40 = phi i1 [ false, %22 ], [ false, %17 ], [ false, %10 ], [ %38, %25 ]
  br i1 %40, label %41, label %58

; <label>:41                                      ; preds = %39
  %42 = load i32* %n, align 4
  %43 = load i32** %5, align 8
  %44 = load i32* %43
  %45 = add nsw i32 %44, %42
  store i32 %45, i32* %43
  %46 = load i32** %5, align 8
  %47 = load i32* %46
  %48 = load i32* %4, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %41
  br label %53

; <label>:51                                      ; preds = %41
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8]* @.str125, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str4, i32 0, i32 0), i32 3098, i8* getelementptr inbounds ([69 x i8]* @__PRETTY_FUNCTION__.read_request, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %53

; <label>:53                                      ; preds = %52, %50
  %54 = load i8** %3, align 8
  %55 = load i32** %5, align 8
  %56 = load i32* %55
  %57 = call i32 @get_request_len(i8* %54, i32 %56)
  store i32 %57, i32* %request_len, align 4
  br label %10

; <label>:58                                      ; preds = %39
  %59 = load i32* %request_len, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %65

; <label>:61                                      ; preds = %58
  %62 = load i32* %n, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %65

; <label>:64                                      ; preds = %61
  br label %67

; <label>:65                                      ; preds = %61, %58
  %66 = load i32* %request_len, align 4
  br label %67

; <label>:67                                      ; preds = %65, %64
  %68 = phi i32 [ -1, %64 ], [ %66, %65 ]
  ret i32 %68
}

define internal void @parse_http_headers(i8** %buf, %struct.mg_request_info* %ri) nounwind uwtable {
  %1 = alloca i8**, align 8
  %2 = alloca %struct.mg_request_info*, align 8
  %i = alloca i32, align 4
  store i8** %buf, i8*** %1, align 8
  store %struct.mg_request_info* %ri, %struct.mg_request_info** %2, align 8
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %40, %0
  %4 = load i32* %i, align 4
  %5 = icmp slt i32 %4, 64
  br i1 %5, label %6, label %43

; <label>:6                                       ; preds = %3
  %7 = load i8*** %1, align 8
  %8 = call i8* @skip_quoted(i8** %7, i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str124, i32 0, i32 0), i8 signext 0)
  %9 = load i32* %i, align 4
  %10 = sext i32 %9 to i64
  %11 = load %struct.mg_request_info** %2, align 8
  %12 = getelementptr inbounds %struct.mg_request_info* %11, i32 0, i32 11
  %13 = getelementptr inbounds [64 x %struct.mg_header]* %12, i32 0, i64 %10
  %14 = getelementptr inbounds %struct.mg_header* %13, i32 0, i32 0
  store i8* %8, i8** %14, align 8
  %15 = load i8*** %1, align 8
  %16 = call i8* @skip(i8** %15, i8* getelementptr inbounds ([3 x i8]* @.str123, i32 0, i32 0))
  %17 = load i32* %i, align 4
  %18 = sext i32 %17 to i64
  %19 = load %struct.mg_request_info** %2, align 8
  %20 = getelementptr inbounds %struct.mg_request_info* %19, i32 0, i32 11
  %21 = getelementptr inbounds [64 x %struct.mg_header]* %20, i32 0, i64 %18
  %22 = getelementptr inbounds %struct.mg_header* %21, i32 0, i32 1
  store i8* %16, i8** %22, align 8
  %23 = load i32* %i, align 4
  %24 = sext i32 %23 to i64
  %25 = load %struct.mg_request_info** %2, align 8
  %26 = getelementptr inbounds %struct.mg_request_info* %25, i32 0, i32 11
  %27 = getelementptr inbounds [64 x %struct.mg_header]* %26, i32 0, i64 %24
  %28 = getelementptr inbounds %struct.mg_header* %27, i32 0, i32 0
  %29 = load i8** %28, align 8
  %30 = getelementptr inbounds i8* %29, i64 0
  %31 = load i8* %30
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

; <label>:34                                      ; preds = %6
  br label %43

; <label>:35                                      ; preds = %6
  %36 = load i32* %i, align 4
  %37 = add nsw i32 %36, 1
  %38 = load %struct.mg_request_info** %2, align 8
  %39 = getelementptr inbounds %struct.mg_request_info* %38, i32 0, i32 10
  store i32 %37, i32* %39, align 4
  br label %40

; <label>:40                                      ; preds = %35
  %41 = load i32* %i, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %i, align 4
  br label %3

; <label>:43                                      ; preds = %34, %3
  ret void
}

declare i32 @kill(i32, i32) nounwind

define internal i8* @skip_quoted(i8** %buf, i8* %delimiters, i8* %whitespace, i8 signext %quotechar) nounwind uwtable {
  %1 = alloca i8**, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %p = alloca i8*, align 8
  %begin_word = alloca i8*, align 8
  %end_word = alloca i8*, align 8
  %end_whitespace = alloca i8*, align 8
  %end_off = alloca i64, align 8
  store i8** %buf, i8*** %1, align 8
  store i8* %delimiters, i8** %2, align 8
  store i8* %whitespace, i8** %3, align 8
  store i8 %quotechar, i8* %4, align 1
  %5 = load i8*** %1, align 8
  %6 = load i8** %5
  store i8* %6, i8** %begin_word, align 8
  %7 = load i8** %begin_word, align 8
  %8 = load i8** %begin_word, align 8
  %9 = load i8** %2, align 8
  %10 = call i64 @strcspn(i8* %8, i8* %9) nounwind readonly
  %11 = getelementptr inbounds i8* %7, i64 %10
  store i8* %11, i8** %end_word, align 8
  %12 = load i8** %end_word, align 8
  %13 = load i8** %begin_word, align 8
  %14 = icmp ugt i8* %12, %13
  br i1 %14, label %15, label %62

; <label>:15                                      ; preds = %0
  %16 = load i8** %end_word, align 8
  %17 = getelementptr inbounds i8* %16, i64 -1
  store i8* %17, i8** %p, align 8
  br label %18

; <label>:18                                      ; preds = %48, %15
  %19 = load i8** %p, align 8
  %20 = load i8* %19
  %21 = sext i8 %20 to i32
  %22 = load i8* %4, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %49

; <label>:25                                      ; preds = %18
  %26 = load i8** %end_word, align 8
  %27 = load i8* %26
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

; <label>:30                                      ; preds = %25
  %31 = load i8** %p, align 8
  store i8 0, i8* %31
  br label %49

; <label>:32                                      ; preds = %25
  %33 = load i8** %end_word, align 8
  %34 = getelementptr inbounds i8* %33, i64 1
  %35 = load i8** %2, align 8
  %36 = call i64 @strcspn(i8* %34, i8* %35) nounwind readonly
  store i64 %36, i64* %end_off, align 8
  %37 = load i8** %p, align 8
  %38 = load i8** %end_word, align 8
  %39 = load i64* %end_off, align 8
  %40 = add i64 %39, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %37, i8* %38, i64 %40, i32 1, i1 false)
  %41 = load i64* %end_off, align 8
  %42 = load i8** %p, align 8
  %43 = getelementptr inbounds i8* %42, i64 %41
  store i8* %43, i8** %p, align 8
  %44 = load i64* %end_off, align 8
  %45 = add i64 %44, 1
  %46 = load i8** %end_word, align 8
  %47 = getelementptr inbounds i8* %46, i64 %45
  store i8* %47, i8** %end_word, align 8
  br label %48

; <label>:48                                      ; preds = %32
  br label %18

; <label>:49                                      ; preds = %30, %18
  %50 = load i8** %p, align 8
  %51 = getelementptr inbounds i8* %50, i32 1
  store i8* %51, i8** %p, align 8
  br label %52

; <label>:52                                      ; preds = %58, %49
  %53 = load i8** %p, align 8
  %54 = load i8** %end_word, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %56, label %61

; <label>:56                                      ; preds = %52
  %57 = load i8** %p, align 8
  store i8 0, i8* %57
  br label %58

; <label>:58                                      ; preds = %56
  %59 = load i8** %p, align 8
  %60 = getelementptr inbounds i8* %59, i32 1
  store i8* %60, i8** %p, align 8
  br label %52

; <label>:61                                      ; preds = %52
  br label %62

; <label>:62                                      ; preds = %61, %0
  %63 = load i8** %end_word, align 8
  %64 = load i8* %63
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

; <label>:67                                      ; preds = %62
  %68 = load i8** %end_word, align 8
  %69 = load i8*** %1, align 8
  store i8* %68, i8** %69
  br label %91

; <label>:70                                      ; preds = %62
  %71 = load i8** %end_word, align 8
  %72 = getelementptr inbounds i8* %71, i64 1
  %73 = load i8** %end_word, align 8
  %74 = getelementptr inbounds i8* %73, i64 1
  %75 = load i8** %3, align 8
  %76 = call i64 @strspn(i8* %74, i8* %75) nounwind readonly
  %77 = getelementptr inbounds i8* %72, i64 %76
  store i8* %77, i8** %end_whitespace, align 8
  %78 = load i8** %end_word, align 8
  store i8* %78, i8** %p, align 8
  br label %79

; <label>:79                                      ; preds = %85, %70
  %80 = load i8** %p, align 8
  %81 = load i8** %end_whitespace, align 8
  %82 = icmp ult i8* %80, %81
  br i1 %82, label %83, label %88

; <label>:83                                      ; preds = %79
  %84 = load i8** %p, align 8
  store i8 0, i8* %84
  br label %85

; <label>:85                                      ; preds = %83
  %86 = load i8** %p, align 8
  %87 = getelementptr inbounds i8* %86, i32 1
  store i8* %87, i8** %p, align 8
  br label %79

; <label>:88                                      ; preds = %79
  %89 = load i8** %end_whitespace, align 8
  %90 = load i8*** %1, align 8
  store i8* %89, i8** %90
  br label %91

; <label>:91                                      ; preds = %88, %67
  %92 = load i8** %begin_word, align 8
  ret i8* %92
}

define internal i8* @skip(i8** %buf, i8* %delimiters) nounwind uwtable {
  %1 = alloca i8**, align 8
  %2 = alloca i8*, align 8
  store i8** %buf, i8*** %1, align 8
  store i8* %delimiters, i8** %2, align 8
  %3 = load i8*** %1, align 8
  %4 = load i8** %2, align 8
  %5 = load i8** %2, align 8
  %6 = call i8* @skip_quoted(i8** %3, i8* %4, i8* %5, i8 signext 0)
  ret i8* %6
}

declare i64 @strcspn(i8*, i8*) nounwind readonly

declare i64 @strspn(i8*, i8*) nounwind readonly

define internal i32 @pull(%struct._IO_FILE* %fp, %struct.mg_connection* %conn, i8* %buf, i32 %len) nounwind uwtable {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %nread = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %1, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %2, align 8
  store i8* %buf, i8** %3, align 8
  store i32 %len, i32* %4, align 4
  %5 = load %struct._IO_FILE** %1, align 8
  %6 = icmp ne %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %15

; <label>:7                                       ; preds = %0
  %8 = load %struct._IO_FILE** %1, align 8
  %9 = call i32 @fileno(%struct._IO_FILE* %8) nounwind
  %10 = load i8** %3, align 8
  %11 = load i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = call i64 @read(i32 %9, i8* %10, i64 %12)
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %nread, align 4
  br label %40

; <label>:15                                      ; preds = %0
  %16 = load %struct.mg_connection** %2, align 8
  %17 = getelementptr inbounds %struct.mg_connection* %16, i32 0, i32 2
  %18 = load %struct.ssl_st** %17, align 8
  %19 = icmp ne %struct.ssl_st* %18, null
  br i1 %19, label %20, label %29

; <label>:20                                      ; preds = %15
  %21 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 3, i32 1), align 8
  %22 = bitcast void ()* %21 to i32 (%struct.ssl_st*, i8*, i32)*
  %23 = load %struct.mg_connection** %2, align 8
  %24 = getelementptr inbounds %struct.mg_connection* %23, i32 0, i32 2
  %25 = load %struct.ssl_st** %24, align 8
  %26 = load i8** %3, align 8
  %27 = load i32* %4, align 4
  %28 = call i32 %22(%struct.ssl_st* %25, i8* %26, i32 %27)
  store i32 %28, i32* %nread, align 4
  br label %39

; <label>:29                                      ; preds = %15
  %30 = load %struct.mg_connection** %2, align 8
  %31 = getelementptr inbounds %struct.mg_connection* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.socket* %31, i32 0, i32 0
  %33 = load i32* %32, align 4
  %34 = load i8** %3, align 8
  %35 = load i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = call i64 @recv(i32 %33, i8* %34, i64 %36, i32 0)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %nread, align 4
  br label %39

; <label>:39                                      ; preds = %29, %20
  br label %40

; <label>:40                                      ; preds = %39, %7
  %41 = load %struct.mg_connection** %2, align 8
  %42 = getelementptr inbounds %struct.mg_connection* %41, i32 0, i32 1
  %43 = load %struct.mg_context** %42, align 8
  %44 = getelementptr inbounds %struct.mg_context* %43, i32 0, i32 0
  %45 = load volatile i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %40
  br label %50

; <label>:48                                      ; preds = %40
  %49 = load i32* %nread, align 4
  br label %50

; <label>:50                                      ; preds = %48, %47
  %51 = phi i32 [ -1, %47 ], [ %49, %48 ]
  ret i32 %51
}

declare i64 @read(i32, i8*, i64)

declare i64 @recv(i32, i8*, i64, i32)

declare i32 @fork() nounwind

declare i32 @chdir(i8*) nounwind

declare i32 @dup2(i32, i32) nounwind

declare i32 @execle(i8*, i8*, ...) nounwind

declare void @exit(i32) noreturn nounwind

define internal i8* @addenv(%struct.cgi_env_block* %block, i8* %fmt, ...) nounwind uwtable {
  %1 = alloca %struct.cgi_env_block*, align 8
  %2 = alloca i8*, align 8
  %n = alloca i32, align 4
  %space = alloca i32, align 4
  %added = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.cgi_env_block* %block, %struct.cgi_env_block** %1, align 8
  store i8* %fmt, i8** %2, align 8
  %3 = load %struct.cgi_env_block** %1, align 8
  %4 = getelementptr inbounds %struct.cgi_env_block* %3, i32 0, i32 2
  %5 = load i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = sub i64 4096, %6
  %8 = sub i64 %7, 2
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %space, align 4
  %10 = load i32* %space, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %0
  br label %15

; <label>:13                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8]* @.str179, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str4, i32 0, i32 0), i32 3250, i8* getelementptr inbounds ([56 x i8]* @__PRETTY_FUNCTION__.addenv, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = load %struct.cgi_env_block** %1, align 8
  %17 = getelementptr inbounds %struct.cgi_env_block* %16, i32 0, i32 1
  %18 = getelementptr inbounds [4096 x i8]* %17, i32 0, i32 0
  %19 = load %struct.cgi_env_block** %1, align 8
  %20 = getelementptr inbounds %struct.cgi_env_block* %19, i32 0, i32 2
  %21 = load i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8* %18, i64 %22
  store i8* %23, i8** %added, align 8
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %25 = bitcast %struct.__va_list_tag* %24 to i8*
  call void @llvm.va_start(i8* %25)
  %26 = load %struct.cgi_env_block** %1, align 8
  %27 = getelementptr inbounds %struct.cgi_env_block* %26, i32 0, i32 0
  %28 = load %struct.mg_connection** %27, align 8
  %29 = load i8** %added, align 8
  %30 = load i32* %space, align 4
  %31 = sext i32 %30 to i64
  %32 = load i8** %2, align 8
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %34 = call i32 @mg_vsnprintf(%struct.mg_connection* %28, i8* %29, i64 %31, i8* %32, %struct.__va_list_tag* %33)
  store i32 %34, i32* %n, align 4
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %36 = bitcast %struct.__va_list_tag* %35 to i8*
  call void @llvm.va_end(i8* %36)
  %37 = load i32* %n, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %65

; <label>:39                                      ; preds = %15
  %40 = load i32* %n, align 4
  %41 = add nsw i32 %40, 1
  %42 = load i32* %space, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %65

; <label>:44                                      ; preds = %39
  %45 = load %struct.cgi_env_block** %1, align 8
  %46 = getelementptr inbounds %struct.cgi_env_block* %45, i32 0, i32 4
  %47 = load i32* %46, align 4
  %48 = icmp slt i32 %47, 62
  br i1 %48, label %49, label %65

; <label>:49                                      ; preds = %44
  %50 = load i8** %added, align 8
  %51 = load %struct.cgi_env_block** %1, align 8
  %52 = getelementptr inbounds %struct.cgi_env_block* %51, i32 0, i32 4
  %53 = load i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = sext i32 %53 to i64
  %56 = load %struct.cgi_env_block** %1, align 8
  %57 = getelementptr inbounds %struct.cgi_env_block* %56, i32 0, i32 3
  %58 = getelementptr inbounds [64 x i8*]* %57, i32 0, i64 %55
  store i8* %50, i8** %58, align 8
  %59 = load i32* %n, align 4
  %60 = add nsw i32 %59, 1
  %61 = load %struct.cgi_env_block** %1, align 8
  %62 = getelementptr inbounds %struct.cgi_env_block* %61, i32 0, i32 2
  %63 = load i32* %62, align 4
  %64 = add nsw i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %70

; <label>:65                                      ; preds = %44, %39, %15
  %66 = load %struct.cgi_env_block** %1, align 8
  %67 = getelementptr inbounds %struct.cgi_env_block* %66, i32 0, i32 0
  %68 = load %struct.mg_connection** %67, align 8
  %69 = load i8** %2, align 8
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %68, i8* getelementptr inbounds ([38 x i8]* @.str180, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @__func__.addenv, i32 0, i32 0), i8* %69)
  br label %70

; <label>:70                                      ; preds = %65, %49
  %71 = load i8** %added, align 8
  ret i8* %71
}

declare i8* @getenv(i8*) nounwind

declare i32 @toupper(i32) nounwind

define internal i32 @lowercase(i8* %s) nounwind uwtable {
  %1 = alloca i8*, align 8
  store i8* %s, i8** %1, align 8
  %2 = load i8** %1, align 8
  %3 = load i8* %2
  %4 = zext i8 %3 to i32
  %5 = call i32 @tolower(i32 %4) nounwind
  ret i32 %5
}

define internal i32 @scan_directory(%struct.mg_connection* %conn, i8* %dir, i8* %data, void (%struct.de*, i8*)* %cb) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca void (%struct.de*, i8*)*, align 8
  %path = alloca [4096 x i8], align 16
  %dp = alloca %struct.dirent*, align 8
  %dirp = alloca %struct.__dirstream*, align 8
  %de = alloca %struct.de, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %2, align 8
  store i8* %dir, i8** %3, align 8
  store i8* %data, i8** %4, align 8
  store void (%struct.de*, i8*)* %cb, void (%struct.de*, i8*)** %5, align 8
  %6 = load i8** %3, align 8
  %7 = call %struct.__dirstream* @opendir(i8* %6)
  store %struct.__dirstream* %7, %struct.__dirstream** %dirp, align 8
  %8 = icmp eq %struct.__dirstream* %7, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  store i32 0, i32* %1
  br label %61

; <label>:10                                      ; preds = %0
  %11 = load %struct.mg_connection** %2, align 8
  %12 = getelementptr inbounds %struct.de* %de, i32 0, i32 0
  store %struct.mg_connection* %11, %struct.mg_connection** %12, align 8
  br label %13

; <label>:13                                      ; preds = %37, %36, %10
  %14 = load %struct.__dirstream** %dirp, align 8
  %15 = call %struct.dirent* @readdir(%struct.__dirstream* %14)
  store %struct.dirent* %15, %struct.dirent** %dp, align 8
  %16 = icmp ne %struct.dirent* %15, null
  br i1 %16, label %17, label %57

; <label>:17                                      ; preds = %13
  %18 = load %struct.dirent** %dp, align 8
  %19 = getelementptr inbounds %struct.dirent* %18, i32 0, i32 4
  %20 = getelementptr inbounds [256 x i8]* %19, i32 0, i32 0
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([2 x i8]* @.str199, i32 0, i32 0)) nounwind readonly
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

; <label>:23                                      ; preds = %17
  %24 = load %struct.dirent** %dp, align 8
  %25 = getelementptr inbounds %struct.dirent* %24, i32 0, i32 4
  %26 = getelementptr inbounds [256 x i8]* %25, i32 0, i32 0
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([3 x i8]* @.str187, i32 0, i32 0)) nounwind readonly
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

; <label>:29                                      ; preds = %23
  %30 = load %struct.mg_connection** %2, align 8
  %31 = load %struct.dirent** %dp, align 8
  %32 = getelementptr inbounds %struct.dirent* %31, i32 0, i32 4
  %33 = getelementptr inbounds [256 x i8]* %32, i32 0, i32 0
  %34 = call i32 @must_hide_file(%struct.mg_connection* %30, i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

; <label>:36                                      ; preds = %29, %23, %17
  br label %13

; <label>:37                                      ; preds = %29
  %38 = load %struct.mg_connection** %2, align 8
  %39 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %40 = load i8** %3, align 8
  %41 = load %struct.dirent** %dp, align 8
  %42 = getelementptr inbounds %struct.dirent* %41, i32 0, i32 4
  %43 = getelementptr inbounds [256 x i8]* %42, i32 0, i32 0
  %44 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %38, i8* %39, i64 4096, i8* getelementptr inbounds ([7 x i8]* @.str107, i32 0, i32 0), i8* %40, i32 47, i8* %43)
  %45 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %46 = bitcast %struct.file* %45 to i8*
  call void @llvm.memset.p0i8.i64(i8* %46, i8 0, i64 48, i32 1, i1 false)
  %47 = load %struct.mg_connection** %2, align 8
  %48 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %49 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %50 = call i32 @mg_stat(%struct.mg_connection* %47, i8* %48, %struct.file* %49)
  %51 = load %struct.dirent** %dp, align 8
  %52 = getelementptr inbounds %struct.dirent* %51, i32 0, i32 4
  %53 = getelementptr inbounds [256 x i8]* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.de* %de, i32 0, i32 1
  store i8* %53, i8** %54, align 8
  %55 = load void (%struct.de*, i8*)** %5, align 8
  %56 = load i8** %4, align 8
  call void %55(%struct.de* %de, i8* %56)
  br label %13

; <label>:57                                      ; preds = %13
  %58 = load %struct.__dirstream** %dirp, align 8
  %59 = call i32 @closedir(%struct.__dirstream* %58)
  br label %60

; <label>:60                                      ; preds = %57
  store i32 1, i32* %1
  br label %61

; <label>:61                                      ; preds = %60, %9
  %62 = load i32* %1
  ret i32 %62
}

define internal void @dir_scan_callback(%struct.de* %de, i8* %data) nounwind uwtable {
  %1 = alloca %struct.de*, align 8
  %2 = alloca i8*, align 8
  %dsd = alloca %struct.dir_scan_data*, align 8
  store %struct.de* %de, %struct.de** %1, align 8
  store i8* %data, i8** %2, align 8
  %3 = load i8** %2, align 8
  %4 = bitcast i8* %3 to %struct.dir_scan_data*
  store %struct.dir_scan_data* %4, %struct.dir_scan_data** %dsd, align 8
  %5 = load %struct.dir_scan_data** %dsd, align 8
  %6 = getelementptr inbounds %struct.dir_scan_data* %5, i32 0, i32 0
  %7 = load %struct.de** %6, align 8
  %8 = icmp eq %struct.de* %7, null
  br i1 %8, label %17, label %9

; <label>:9                                       ; preds = %0
  %10 = load %struct.dir_scan_data** %dsd, align 8
  %11 = getelementptr inbounds %struct.dir_scan_data* %10, i32 0, i32 1
  %12 = load i32* %11, align 4
  %13 = load %struct.dir_scan_data** %dsd, align 8
  %14 = getelementptr inbounds %struct.dir_scan_data* %13, i32 0, i32 2
  %15 = load i32* %14, align 4
  %16 = icmp sge i32 %12, %15
  br i1 %16, label %17, label %35

; <label>:17                                      ; preds = %9, %0
  %18 = load %struct.dir_scan_data** %dsd, align 8
  %19 = getelementptr inbounds %struct.dir_scan_data* %18, i32 0, i32 2
  %20 = load i32* %19, align 4
  %21 = mul nsw i32 %20, 2
  store i32 %21, i32* %19, align 4
  %22 = load %struct.dir_scan_data** %dsd, align 8
  %23 = getelementptr inbounds %struct.dir_scan_data* %22, i32 0, i32 0
  %24 = load %struct.de** %23, align 8
  %25 = bitcast %struct.de* %24 to i8*
  %26 = load %struct.dir_scan_data** %dsd, align 8
  %27 = getelementptr inbounds %struct.dir_scan_data* %26, i32 0, i32 2
  %28 = load i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 64
  %31 = call i8* @realloc2(i8* %25, i64 %30)
  %32 = bitcast i8* %31 to %struct.de*
  %33 = load %struct.dir_scan_data** %dsd, align 8
  %34 = getelementptr inbounds %struct.dir_scan_data* %33, i32 0, i32 0
  store %struct.de* %32, %struct.de** %34, align 8
  br label %35

; <label>:35                                      ; preds = %17, %9
  %36 = load %struct.dir_scan_data** %dsd, align 8
  %37 = getelementptr inbounds %struct.dir_scan_data* %36, i32 0, i32 0
  %38 = load %struct.de** %37, align 8
  %39 = icmp eq %struct.de* %38, null
  br i1 %39, label %40, label %43

; <label>:40                                      ; preds = %35
  %41 = load %struct.dir_scan_data** %dsd, align 8
  %42 = getelementptr inbounds %struct.dir_scan_data* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  br label %86

; <label>:43                                      ; preds = %35
  %44 = load %struct.de** %1, align 8
  %45 = getelementptr inbounds %struct.de* %44, i32 0, i32 1
  %46 = load i8** %45, align 8
  %47 = call i8* @mg_strdup(i8* %46)
  %48 = load %struct.dir_scan_data** %dsd, align 8
  %49 = getelementptr inbounds %struct.dir_scan_data* %48, i32 0, i32 1
  %50 = load i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.dir_scan_data** %dsd, align 8
  %53 = getelementptr inbounds %struct.dir_scan_data* %52, i32 0, i32 0
  %54 = load %struct.de** %53, align 8
  %55 = getelementptr inbounds %struct.de* %54, i64 %51
  %56 = getelementptr inbounds %struct.de* %55, i32 0, i32 1
  store i8* %47, i8** %56, align 8
  %57 = load %struct.dir_scan_data** %dsd, align 8
  %58 = getelementptr inbounds %struct.dir_scan_data* %57, i32 0, i32 1
  %59 = load i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.dir_scan_data** %dsd, align 8
  %62 = getelementptr inbounds %struct.dir_scan_data* %61, i32 0, i32 0
  %63 = load %struct.de** %62, align 8
  %64 = getelementptr inbounds %struct.de* %63, i64 %60
  %65 = getelementptr inbounds %struct.de* %64, i32 0, i32 2
  %66 = load %struct.de** %1, align 8
  %67 = getelementptr inbounds %struct.de* %66, i32 0, i32 2
  %68 = bitcast %struct.file* %65 to i8*
  %69 = bitcast %struct.file* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 48, i32 8, i1 false)
  %70 = load %struct.de** %1, align 8
  %71 = getelementptr inbounds %struct.de* %70, i32 0, i32 0
  %72 = load %struct.mg_connection** %71, align 8
  %73 = load %struct.dir_scan_data** %dsd, align 8
  %74 = getelementptr inbounds %struct.dir_scan_data* %73, i32 0, i32 1
  %75 = load i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = load %struct.dir_scan_data** %dsd, align 8
  %78 = getelementptr inbounds %struct.dir_scan_data* %77, i32 0, i32 0
  %79 = load %struct.de** %78, align 8
  %80 = getelementptr inbounds %struct.de* %79, i64 %76
  %81 = getelementptr inbounds %struct.de* %80, i32 0, i32 0
  store %struct.mg_connection* %72, %struct.mg_connection** %81, align 8
  %82 = load %struct.dir_scan_data** %dsd, align 8
  %83 = getelementptr inbounds %struct.dir_scan_data* %82, i32 0, i32 1
  %84 = load i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %86

; <label>:86                                      ; preds = %43, %40
  ret void
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*)

define internal i32 @compare_dir_entries(i8* %p1, i8* %p2) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %a = alloca %struct.de*, align 8
  %b = alloca %struct.de*, align 8
  %query_string = alloca i8*, align 8
  %cmp_result = alloca i32, align 4
  store i8* %p1, i8** %2, align 8
  store i8* %p2, i8** %3, align 8
  %4 = load i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.de*
  store %struct.de* %5, %struct.de** %a, align 8
  %6 = load i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.de*
  store %struct.de* %7, %struct.de** %b, align 8
  %8 = load %struct.de** %a, align 8
  %9 = getelementptr inbounds %struct.de* %8, i32 0, i32 0
  %10 = load %struct.mg_connection** %9, align 8
  %11 = getelementptr inbounds %struct.mg_connection* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.mg_request_info* %11, i32 0, i32 3
  %13 = load i8** %12, align 8
  store i8* %13, i8** %query_string, align 8
  store i32 0, i32* %cmp_result, align 4
  %14 = load i8** %query_string, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %0
  store i8* getelementptr inbounds ([3 x i8]* @.str198, i32 0, i32 0), i8** %query_string, align 8
  br label %17

; <label>:17                                      ; preds = %16, %0
  %18 = load %struct.de** %a, align 8
  %19 = getelementptr inbounds %struct.de* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.file* %19, i32 0, i32 0
  %21 = load i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

; <label>:23                                      ; preds = %17
  %24 = load %struct.de** %b, align 8
  %25 = getelementptr inbounds %struct.de* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.file* %25, i32 0, i32 0
  %27 = load i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

; <label>:29                                      ; preds = %23
  store i32 -1, i32* %1
  br label %131

; <label>:30                                      ; preds = %23, %17
  %31 = load %struct.de** %a, align 8
  %32 = getelementptr inbounds %struct.de* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.file* %32, i32 0, i32 0
  %34 = load i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

; <label>:36                                      ; preds = %30
  %37 = load %struct.de** %b, align 8
  %38 = getelementptr inbounds %struct.de* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.file* %38, i32 0, i32 0
  %40 = load i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %36
  store i32 1, i32* %1
  br label %131

; <label>:43                                      ; preds = %36, %30
  %44 = load i8** %query_string, align 8
  %45 = load i8* %44
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 110
  br i1 %47, label %48, label %56

; <label>:48                                      ; preds = %43
  %49 = load %struct.de** %a, align 8
  %50 = getelementptr inbounds %struct.de* %49, i32 0, i32 1
  %51 = load i8** %50, align 8
  %52 = load %struct.de** %b, align 8
  %53 = getelementptr inbounds %struct.de* %52, i32 0, i32 1
  %54 = load i8** %53, align 8
  %55 = call i32 @strcmp(i8* %51, i8* %54) nounwind readonly
  store i32 %55, i32* %cmp_result, align 4
  br label %116

; <label>:56                                      ; preds = %43
  %57 = load i8** %query_string, align 8
  %58 = load i8* %57
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 115
  br i1 %60, label %61, label %85

; <label>:61                                      ; preds = %56
  %62 = load %struct.de** %a, align 8
  %63 = getelementptr inbounds %struct.de* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.file* %63, i32 0, i32 2
  %65 = load i64* %64, align 8
  %66 = load %struct.de** %b, align 8
  %67 = getelementptr inbounds %struct.de* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.file* %67, i32 0, i32 2
  %69 = load i64* %68, align 8
  %70 = icmp eq i64 %65, %69
  br i1 %70, label %71, label %72

; <label>:71                                      ; preds = %61
  br label %83

; <label>:72                                      ; preds = %61
  %73 = load %struct.de** %a, align 8
  %74 = getelementptr inbounds %struct.de* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.file* %74, i32 0, i32 2
  %76 = load i64* %75, align 8
  %77 = load %struct.de** %b, align 8
  %78 = getelementptr inbounds %struct.de* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.file* %78, i32 0, i32 2
  %80 = load i64* %79, align 8
  %81 = icmp sgt i64 %76, %80
  %82 = select i1 %81, i32 1, i32 -1
  br label %83

; <label>:83                                      ; preds = %72, %71
  %84 = phi i32 [ 0, %71 ], [ %82, %72 ]
  store i32 %84, i32* %cmp_result, align 4
  br label %115

; <label>:85                                      ; preds = %56
  %86 = load i8** %query_string, align 8
  %87 = load i8* %86
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 100
  br i1 %89, label %90, label %114

; <label>:90                                      ; preds = %85
  %91 = load %struct.de** %a, align 8
  %92 = getelementptr inbounds %struct.de* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.file* %92, i32 0, i32 1
  %94 = load i64* %93, align 8
  %95 = load %struct.de** %b, align 8
  %96 = getelementptr inbounds %struct.de* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.file* %96, i32 0, i32 1
  %98 = load i64* %97, align 8
  %99 = icmp eq i64 %94, %98
  br i1 %99, label %100, label %101

; <label>:100                                     ; preds = %90
  br label %112

; <label>:101                                     ; preds = %90
  %102 = load %struct.de** %a, align 8
  %103 = getelementptr inbounds %struct.de* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.file* %103, i32 0, i32 1
  %105 = load i64* %104, align 8
  %106 = load %struct.de** %b, align 8
  %107 = getelementptr inbounds %struct.de* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.file* %107, i32 0, i32 1
  %109 = load i64* %108, align 8
  %110 = icmp sgt i64 %105, %109
  %111 = select i1 %110, i32 1, i32 -1
  br label %112

; <label>:112                                     ; preds = %101, %100
  %113 = phi i32 [ 0, %100 ], [ %111, %101 ]
  store i32 %113, i32* %cmp_result, align 4
  br label %114

; <label>:114                                     ; preds = %112, %85
  br label %115

; <label>:115                                     ; preds = %114, %83
  br label %116

; <label>:116                                     ; preds = %115, %48
  br label %117

; <label>:117                                     ; preds = %116
  br label %118

; <label>:118                                     ; preds = %117
  %119 = load i8** %query_string, align 8
  %120 = getelementptr inbounds i8* %119, i64 1
  %121 = load i8* %120
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 100
  br i1 %123, label %124, label %127

; <label>:124                                     ; preds = %118
  %125 = load i32* %cmp_result, align 4
  %126 = sub nsw i32 0, %125
  br label %129

; <label>:127                                     ; preds = %118
  %128 = load i32* %cmp_result, align 4
  br label %129

; <label>:129                                     ; preds = %127, %124
  %130 = phi i32 [ %126, %124 ], [ %128, %127 ]
  store i32 %130, i32* %1
  br label %131

; <label>:131                                     ; preds = %129, %42, %29
  %132 = load i32* %1
  ret i32 %132
}

define internal void @print_dir_entry(%struct.de* %de) nounwind uwtable {
  %1 = alloca %struct.de*, align 8
  %size = alloca [64 x i8], align 16
  %mod = alloca [64 x i8], align 16
  %href = alloca [4096 x i8], align 16
  store %struct.de* %de, %struct.de** %1, align 8
  %2 = load %struct.de** %1, align 8
  %3 = getelementptr inbounds %struct.de* %2, i32 0, i32 2
  %4 = getelementptr inbounds %struct.file* %3, i32 0, i32 0
  %5 = load i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

; <label>:7                                       ; preds = %0
  %8 = load %struct.de** %1, align 8
  %9 = getelementptr inbounds %struct.de* %8, i32 0, i32 0
  %10 = load %struct.mg_connection** %9, align 8
  %11 = getelementptr inbounds [64 x i8]* %size, i32 0, i32 0
  %12 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %10, i8* %11, i64 64, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str191, i32 0, i32 0))
  br label %81

; <label>:13                                      ; preds = %0
  %14 = load %struct.de** %1, align 8
  %15 = getelementptr inbounds %struct.de* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.file* %15, i32 0, i32 2
  %17 = load i64* %16, align 8
  %18 = icmp slt i64 %17, 1024
  br i1 %18, label %19, label %30

; <label>:19                                      ; preds = %13
  %20 = load %struct.de** %1, align 8
  %21 = getelementptr inbounds %struct.de* %20, i32 0, i32 0
  %22 = load %struct.mg_connection** %21, align 8
  %23 = getelementptr inbounds [64 x i8]* %size, i32 0, i32 0
  %24 = load %struct.de** %1, align 8
  %25 = getelementptr inbounds %struct.de* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.file* %25, i32 0, i32 2
  %27 = load i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %22, i8* %23, i64 64, i8* getelementptr inbounds ([3 x i8]* @.str192, i32 0, i32 0), i32 %28)
  br label %80

; <label>:30                                      ; preds = %13
  %31 = load %struct.de** %1, align 8
  %32 = getelementptr inbounds %struct.de* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.file* %32, i32 0, i32 2
  %34 = load i64* %33, align 8
  %35 = icmp slt i64 %34, 1048576
  br i1 %35, label %36, label %48

; <label>:36                                      ; preds = %30
  %37 = load %struct.de** %1, align 8
  %38 = getelementptr inbounds %struct.de* %37, i32 0, i32 0
  %39 = load %struct.mg_connection** %38, align 8
  %40 = getelementptr inbounds [64 x i8]* %size, i32 0, i32 0
  %41 = load %struct.de** %1, align 8
  %42 = getelementptr inbounds %struct.de* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.file* %42, i32 0, i32 2
  %44 = load i64* %43, align 8
  %45 = sitofp i64 %44 to double
  %46 = fdiv double %45, 1.024000e+03
  %47 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %39, i8* %40, i64 64, i8* getelementptr inbounds ([6 x i8]* @.str193, i32 0, i32 0), double %46)
  br label %79

; <label>:48                                      ; preds = %30
  %49 = load %struct.de** %1, align 8
  %50 = getelementptr inbounds %struct.de* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.file* %50, i32 0, i32 2
  %52 = load i64* %51, align 8
  %53 = icmp slt i64 %52, 1073741824
  br i1 %53, label %54, label %66

; <label>:54                                      ; preds = %48
  %55 = load %struct.de** %1, align 8
  %56 = getelementptr inbounds %struct.de* %55, i32 0, i32 0
  %57 = load %struct.mg_connection** %56, align 8
  %58 = getelementptr inbounds [64 x i8]* %size, i32 0, i32 0
  %59 = load %struct.de** %1, align 8
  %60 = getelementptr inbounds %struct.de* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.file* %60, i32 0, i32 2
  %62 = load i64* %61, align 8
  %63 = sitofp i64 %62 to double
  %64 = fdiv double %63, 1.048576e+06
  %65 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %57, i8* %58, i64 64, i8* getelementptr inbounds ([6 x i8]* @.str194, i32 0, i32 0), double %64)
  br label %78

; <label>:66                                      ; preds = %48
  %67 = load %struct.de** %1, align 8
  %68 = getelementptr inbounds %struct.de* %67, i32 0, i32 0
  %69 = load %struct.mg_connection** %68, align 8
  %70 = getelementptr inbounds [64 x i8]* %size, i32 0, i32 0
  %71 = load %struct.de** %1, align 8
  %72 = getelementptr inbounds %struct.de* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.file* %72, i32 0, i32 2
  %74 = load i64* %73, align 8
  %75 = sitofp i64 %74 to double
  %76 = fdiv double %75, 0x41D0000000000000
  %77 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %69, i8* %70, i64 64, i8* getelementptr inbounds ([6 x i8]* @.str195, i32 0, i32 0), double %76)
  br label %78

; <label>:78                                      ; preds = %66, %54
  br label %79

; <label>:79                                      ; preds = %78, %36
  br label %80

; <label>:80                                      ; preds = %79, %19
  br label %81

; <label>:81                                      ; preds = %80, %7
  %82 = getelementptr inbounds [64 x i8]* %mod, i32 0, i32 0
  %83 = load %struct.de** %1, align 8
  %84 = getelementptr inbounds %struct.de* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.file* %84, i32 0, i32 1
  %86 = call %struct.tm* @localtime(i64* %85) nounwind
  %87 = call i64 @strftime(i8* %82, i64 64, i8* getelementptr inbounds ([15 x i8]* @.str196, i32 0, i32 0), %struct.tm* %86) nounwind
  %88 = load %struct.de** %1, align 8
  %89 = getelementptr inbounds %struct.de* %88, i32 0, i32 1
  %90 = load i8** %89, align 8
  %91 = getelementptr inbounds [4096 x i8]* %href, i32 0, i32 0
  call void @mg_url_encode(i8* %90, i8* %91, i64 4096)
  %92 = load %struct.de** %1, align 8
  %93 = getelementptr inbounds %struct.de* %92, i32 0, i32 0
  %94 = load %struct.mg_connection** %93, align 8
  %95 = load %struct.de** %1, align 8
  %96 = getelementptr inbounds %struct.de* %95, i32 0, i32 0
  %97 = load %struct.mg_connection** %96, align 8
  %98 = getelementptr inbounds %struct.mg_connection* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.mg_request_info* %98, i32 0, i32 1
  %100 = load i8** %99, align 8
  %101 = getelementptr inbounds [4096 x i8]* %href, i32 0, i32 0
  %102 = load %struct.de** %1, align 8
  %103 = getelementptr inbounds %struct.de* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.file* %103, i32 0, i32 0
  %105 = load i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  %107 = select i1 %106, i8* getelementptr inbounds ([2 x i8]* @.str181, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)
  %108 = load %struct.de** %1, align 8
  %109 = getelementptr inbounds %struct.de* %108, i32 0, i32 1
  %110 = load i8** %109, align 8
  %111 = load %struct.de** %1, align 8
  %112 = getelementptr inbounds %struct.de* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.file* %112, i32 0, i32 0
  %114 = load i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  %116 = select i1 %115, i8* getelementptr inbounds ([2 x i8]* @.str181, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)
  %117 = getelementptr inbounds [64 x i8]* %mod, i32 0, i32 0
  %118 = getelementptr inbounds [64 x i8]* %size, i32 0, i32 0
  %119 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_chunked_printf(%struct.mg_connection* %94, i8* getelementptr inbounds ([85 x i8]* @.str197, i32 0, i32 0), i8* %100, i8* %101, i8* %107, i8* %110, i8* %116, i8* %117, i8* %118)
  %120 = sext i32 %119 to i64
  %121 = load %struct.de** %1, align 8
  %122 = getelementptr inbounds %struct.de* %121, i32 0, i32 0
  %123 = load %struct.mg_connection** %122, align 8
  %124 = getelementptr inbounds %struct.mg_connection* %123, i32 0, i32 6
  %125 = load i64* %124, align 8
  %126 = add nsw i64 %125, %120
  store i64 %126, i64* %124, align 8
  ret void
}

define internal i8* @realloc2(i8* %ptr, i64 %size) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %new_ptr = alloca i8*, align 8
  store i8* %ptr, i8** %1, align 8
  store i64 %size, i64* %2, align 8
  %3 = load i8** %1, align 8
  %4 = load i64* %2, align 8
  %5 = call i8* @realloc(i8* %3, i64 %4) nounwind
  store i8* %5, i8** %new_ptr, align 8
  %6 = load i8** %new_ptr, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %0
  %9 = load i8** %1, align 8
  call void @free(i8* %9) nounwind
  br label %10

; <label>:10                                      ; preds = %8, %0
  %11 = load i8** %new_ptr, align 8
  ret i8* %11
}

declare i8* @realloc(i8*, i64) nounwind

declare %struct.__dirstream* @opendir(i8*)

declare %struct.dirent* @readdir(%struct.__dirstream*)

declare i32 @closedir(%struct.__dirstream*)

define internal void @print_props(%struct.mg_connection* %conn, i8* %uri, %struct.file* %filep) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.file*, align 8
  %mtime = alloca [64 x i8], align 16
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %uri, i8** %2, align 8
  store %struct.file* %filep, %struct.file** %3, align 8
  %4 = getelementptr inbounds [64 x i8]* %mtime, i32 0, i32 0
  %5 = load %struct.file** %3, align 8
  %6 = getelementptr inbounds %struct.file* %5, i32 0, i32 1
  call void @gmt_time_string(i8* %4, i64 64, i64* %6)
  %7 = load %struct.mg_connection** %1, align 8
  %8 = load i8** %2, align 8
  %9 = load %struct.file** %3, align 8
  %10 = getelementptr inbounds %struct.file* %9, i32 0, i32 0
  %11 = load i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = select i1 %12, i8* getelementptr inbounds ([16 x i8]* @.str208, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)
  %14 = load %struct.file** %3, align 8
  %15 = getelementptr inbounds %struct.file* %14, i32 0, i32 2
  %16 = load i64* %15, align 8
  %17 = getelementptr inbounds [64 x i8]* %mtime, i32 0, i32 0
  %18 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %7, i8* getelementptr inbounds ([244 x i8]* @.str207, i32 0, i32 0), i8* %8, i8* %13, i64 %16, i8* %17)
  %19 = sext i32 %18 to i64
  %20 = load %struct.mg_connection** %1, align 8
  %21 = getelementptr inbounds %struct.mg_connection* %20, i32 0, i32 6
  %22 = load i64* %21, align 8
  %23 = add nsw i64 %22, %19
  store i64 %23, i64* %21, align 8
  ret void
}

define internal void @print_dav_dir_entry(%struct.de* %de, i8* %data) nounwind uwtable {
  %1 = alloca %struct.de*, align 8
  %2 = alloca i8*, align 8
  %href = alloca [4096 x i8], align 16
  %href_encoded = alloca [4096 x i8], align 16
  %conn = alloca %struct.mg_connection*, align 8
  store %struct.de* %de, %struct.de** %1, align 8
  store i8* %data, i8** %2, align 8
  %3 = load i8** %2, align 8
  %4 = bitcast i8* %3 to %struct.mg_connection*
  store %struct.mg_connection* %4, %struct.mg_connection** %conn, align 8
  %5 = load %struct.mg_connection** %conn, align 8
  %6 = getelementptr inbounds [4096 x i8]* %href, i32 0, i32 0
  %7 = load %struct.mg_connection** %conn, align 8
  %8 = getelementptr inbounds %struct.mg_connection* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.mg_request_info* %8, i32 0, i32 1
  %10 = load i8** %9, align 8
  %11 = load %struct.de** %1, align 8
  %12 = getelementptr inbounds %struct.de* %11, i32 0, i32 1
  %13 = load i8** %12, align 8
  %14 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %5, i8* %6, i64 4096, i8* getelementptr inbounds ([5 x i8]* @.str206, i32 0, i32 0), i8* %10, i8* %13)
  %15 = getelementptr inbounds [4096 x i8]* %href, i32 0, i32 0
  %16 = getelementptr inbounds [4096 x i8]* %href_encoded, i32 0, i32 0
  call void @mg_url_encode(i8* %15, i8* %16, i64 4095)
  %17 = load %struct.mg_connection** %conn, align 8
  %18 = getelementptr inbounds [4096 x i8]* %href_encoded, i32 0, i32 0
  %19 = load %struct.de** %1, align 8
  %20 = getelementptr inbounds %struct.de* %19, i32 0, i32 2
  call void @print_props(%struct.mg_connection* %17, i8* %18, %struct.file* %20)
  ret void
}

define internal void @gmt_time_string(i8* %buf, i64 %buf_len, i64* %t) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  store i8* %buf, i8** %1, align 8
  store i64 %buf_len, i64* %2, align 8
  store i64* %t, i64** %3, align 8
  %4 = load i8** %1, align 8
  %5 = load i64* %2, align 8
  %6 = load i64** %3, align 8
  %7 = call %struct.tm* @gmtime(i64* %6) nounwind
  %8 = call i64 @strftime(i8* %4, i64 %5, i8* getelementptr inbounds ([26 x i8]* @.str209, i32 0, i32 0), %struct.tm* %7) nounwind
  ret void
}

declare %struct.tm* @gmtime(i64*) nounwind

declare i32 @rmdir(i8*) nounwind

declare i32 @mkdir(i8*, i32) nounwind

define internal i32 @put_dir(%struct.mg_connection* %conn, i8* %path) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %buf = alloca [4096 x i8], align 16
  %s = alloca i8*, align 8
  %p = alloca i8*, align 8
  %file = alloca %struct.file, align 8
  %len = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %path, i8** %2, align 8
  %3 = bitcast %struct.file* %file to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 48, i32 8, i1 false)
  %4 = bitcast i8* %3 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %5 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %4, i32 0, i32 6
  store i32 1, i32* %res, align 4
  %6 = load i8** %2, align 8
  %7 = getelementptr inbounds i8* %6, i64 2
  store i8* %7, i8** %p, align 8
  store i8* %7, i8** %s, align 8
  br label %8

; <label>:8                                       ; preds = %47, %0
  %9 = load i8** %s, align 8
  %10 = call i8* @strchr(i8* %9, i32 47) nounwind readonly
  store i8* %10, i8** %p, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %50

; <label>:12                                      ; preds = %8
  %13 = load i8** %p, align 8
  %14 = load i8** %2, align 8
  %15 = ptrtoint i8* %13 to i64
  %16 = ptrtoint i8* %14 to i64
  %17 = sub i64 %15, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %len, align 4
  %19 = load i32* %len, align 4
  %20 = icmp sge i32 %19, 4096
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %12
  store i32 -1, i32* %res, align 4
  br label %50

; <label>:22                                      ; preds = %12
  %23 = getelementptr inbounds [4096 x i8]* %buf, i32 0, i32 0
  %24 = load i8** %2, align 8
  %25 = load i32* %len, align 4
  %26 = sext i32 %25 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 %26, i32 1, i1 false)
  %27 = load i32* %len, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4096 x i8]* %buf, i32 0, i64 %28
  store i8 0, i8* %29, align 1
  %30 = load %struct.mg_connection** %1, align 8
  %31 = getelementptr inbounds [4096 x i8]* %buf, i32 0, i32 0
  %32 = call i32 @mg_stat(%struct.mg_connection* %30, i8* %31, %struct.file* %file)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

; <label>:34                                      ; preds = %22
  %35 = getelementptr inbounds [4096 x i8]* %buf, i32 0, i32 0
  %36 = call i32 @mkdir(i8* %35, i32 493) nounwind
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %34
  store i32 -1, i32* %res, align 4
  br label %50

; <label>:39                                      ; preds = %34, %22
  %40 = load i8** %p, align 8
  %41 = getelementptr inbounds i8* %40, i64 1
  %42 = load i8* %41
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %39
  store i32 0, i32* %res, align 4
  br label %46

; <label>:46                                      ; preds = %45, %39
  br label %47

; <label>:47                                      ; preds = %46
  %48 = load i8** %p, align 8
  %49 = getelementptr inbounds i8* %48, i32 1
  store i8* %49, i8** %p, align 8
  store i8* %49, i8** %s, align 8
  br label %8

; <label>:50                                      ; preds = %38, %21, %8
  %51 = load i32* %res, align 4
  ret i32 %51
}

define internal i32 @parse_range_header(i8* %header, i64* %a, i64* %b) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  store i8* %header, i8** %1, align 8
  store i64* %a, i64** %2, align 8
  store i64* %b, i64** %3, align 8
  %4 = load i8** %1, align 8
  %5 = load i64** %2, align 8
  %6 = load i64** %3, align 8
  %7 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([14 x i8]* @.str223, i32 0, i32 0), i64* %5, i64* %6) nounwind
  ret i32 %7
}

define internal i32 @authorize(%struct.mg_connection* %conn, %struct.file* %filep) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca %struct.file*, align 8
  %ah = alloca %struct.ah, align 8
  %line = alloca [256 x i8], align 16
  %f_user = alloca [256 x i8], align 16
  %ha1 = alloca [256 x i8], align 16
  %f_domain = alloca [256 x i8], align 16
  %buf = alloca [8192 x i8], align 16
  %p = alloca i8*, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %2, align 8
  store %struct.file* %filep, %struct.file** %3, align 8
  %4 = load %struct.mg_connection** %2, align 8
  %5 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %6 = call i32 @parse_auth_header(%struct.mg_connection* %4, i8* %5, i64 8192, %struct.ah* %ah)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

; <label>:8                                       ; preds = %0
  store i32 0, i32* %1
  br label %63

; <label>:9                                       ; preds = %0
  %10 = load %struct.file** %3, align 8
  %11 = getelementptr inbounds %struct.file* %10, i32 0, i32 4
  %12 = load i8** %11, align 8
  store i8* %12, i8** %p, align 8
  br label %13

; <label>:13                                      ; preds = %61, %25, %9
  %14 = getelementptr inbounds [256 x i8]* %line, i32 0, i32 0
  %15 = load %struct.file** %3, align 8
  %16 = call i8* @mg_fgets(i8* %14, i64 256, %struct.file* %15, i8** %p)
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %62

; <label>:18                                      ; preds = %13
  %19 = getelementptr inbounds [256 x i8]* %line, i32 0, i32 0
  %20 = getelementptr inbounds [256 x i8]* %f_user, i32 0, i32 0
  %21 = getelementptr inbounds [256 x i8]* %f_domain, i32 0, i32 0
  %22 = getelementptr inbounds [256 x i8]* %ha1, i32 0, i32 0
  %23 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %19, i8* getelementptr inbounds ([15 x i8]* @.str224, i32 0, i32 0), i8* %20, i8* %21, i8* %22) nounwind
  %24 = icmp ne i32 %23, 3
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %18
  br label %13

; <label>:26                                      ; preds = %18
  %27 = getelementptr inbounds %struct.ah* %ah, i32 0, i32 0
  %28 = load i8** %27, align 8
  %29 = getelementptr inbounds [256 x i8]* %f_user, i32 0, i32 0
  %30 = call i32 @strcmp(i8* %28, i8* %29) nounwind readonly
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %61, label %32

; <label>:32                                      ; preds = %26
  %33 = load %struct.mg_connection** %2, align 8
  %34 = getelementptr inbounds %struct.mg_connection* %33, i32 0, i32 1
  %35 = load %struct.mg_context** %34, align 8
  %36 = getelementptr inbounds %struct.mg_context* %35, i32 0, i32 2
  %37 = getelementptr inbounds [24 x i8*]* %36, i32 0, i64 5
  %38 = load i8** %37, align 8
  %39 = getelementptr inbounds [256 x i8]* %f_domain, i32 0, i32 0
  %40 = call i32 @strcmp(i8* %38, i8* %39) nounwind readonly
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %61, label %42

; <label>:42                                      ; preds = %32
  %43 = load %struct.mg_connection** %2, align 8
  %44 = getelementptr inbounds %struct.mg_connection* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.mg_request_info* %44, i32 0, i32 0
  %46 = load i8** %45, align 8
  %47 = getelementptr inbounds [256 x i8]* %ha1, i32 0, i32 0
  %48 = getelementptr inbounds %struct.ah* %ah, i32 0, i32 1
  %49 = load i8** %48, align 8
  %50 = getelementptr inbounds %struct.ah* %ah, i32 0, i32 6
  %51 = load i8** %50, align 8
  %52 = getelementptr inbounds %struct.ah* %ah, i32 0, i32 5
  %53 = load i8** %52, align 8
  %54 = getelementptr inbounds %struct.ah* %ah, i32 0, i32 2
  %55 = load i8** %54, align 8
  %56 = getelementptr inbounds %struct.ah* %ah, i32 0, i32 4
  %57 = load i8** %56, align 8
  %58 = getelementptr inbounds %struct.ah* %ah, i32 0, i32 3
  %59 = load i8** %58, align 8
  %60 = call i32 @check_password(i8* %46, i8* %47, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57, i8* %59)
  store i32 %60, i32* %1
  br label %63

; <label>:61                                      ; preds = %32, %26
  br label %13

; <label>:62                                      ; preds = %13
  store i32 0, i32* %1
  br label %63

; <label>:63                                      ; preds = %62, %42, %8
  %64 = load i32* %1
  ret i32 %64
}

define internal i32 @parse_auth_header(%struct.mg_connection* %conn, i8* %buf, i64 %buf_size, %struct.ah* %ah) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ah*, align 8
  %name = alloca i8*, align 8
  %value = alloca i8*, align 8
  %s = alloca i8*, align 8
  %auth_header = alloca i8*, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %2, align 8
  store i8* %buf, i8** %3, align 8
  store i64 %buf_size, i64* %4, align 8
  store %struct.ah* %ah, %struct.ah** %5, align 8
  %6 = load %struct.ah** %5, align 8
  %7 = bitcast %struct.ah* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 56, i32 1, i1 false)
  %8 = load %struct.mg_connection** %2, align 8
  %9 = call i8* @mg_get_header(%struct.mg_connection* %8, i8* getelementptr inbounds ([14 x i8]* @.str225, i32 0, i32 0))
  store i8* %9, i8** %auth_header, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %15, label %11

; <label>:11                                      ; preds = %0
  %12 = load i8** %auth_header, align 8
  %13 = call i32 @mg_strncasecmp(i8* %12, i8* getelementptr inbounds ([8 x i8]* @.str226, i32 0, i32 0), i64 7)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %11, %0
  store i32 0, i32* %1
  br label %144

; <label>:16                                      ; preds = %11
  %17 = load i8** %3, align 8
  %18 = load i8** %auth_header, align 8
  %19 = getelementptr inbounds i8* %18, i64 7
  %20 = load i64* %4, align 8
  call void @mg_strlcpy(i8* %17, i8* %19, i64 %20)
  %21 = load i8** %3, align 8
  store i8* %21, i8** %s, align 8
  br label %22

; <label>:22                                      ; preds = %128, %16
  br label %23

; <label>:23                                      ; preds = %35, %22
  %24 = load i8** %s, align 8
  %25 = load i8* %24
  %26 = zext i8 %25 to i32
  %27 = sext i32 %26 to i64
  %28 = call i16** @__ctype_b_loc() nounwind readnone
  %29 = load i16** %28
  %30 = getelementptr inbounds i16* %29, i64 %27
  %31 = load i16* %30
  %32 = zext i16 %31 to i32
  %33 = and i32 %32, 8192
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

; <label>:35                                      ; preds = %23
  %36 = load i8** %s, align 8
  %37 = getelementptr inbounds i8* %36, i32 1
  store i8* %37, i8** %s, align 8
  br label %23

; <label>:38                                      ; preds = %23
  %39 = call i8* @skip_quoted(i8** %s, i8* getelementptr inbounds ([2 x i8]* @.str227, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str124, i32 0, i32 0), i8 signext 0)
  store i8* %39, i8** %name, align 8
  %40 = load i8** %s, align 8
  %41 = getelementptr inbounds i8* %40, i64 0
  %42 = load i8* %41
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 34
  br i1 %44, label %45, label %58

; <label>:45                                      ; preds = %38
  %46 = load i8** %s, align 8
  %47 = getelementptr inbounds i8* %46, i32 1
  store i8* %47, i8** %s, align 8
  %48 = call i8* @skip_quoted(i8** %s, i8* getelementptr inbounds ([2 x i8]* @.str228, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str124, i32 0, i32 0), i8 signext 92)
  store i8* %48, i8** %value, align 8
  %49 = load i8** %s, align 8
  %50 = getelementptr inbounds i8* %49, i64 0
  %51 = load i8* %50
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 44
  br i1 %53, label %54, label %57

; <label>:54                                      ; preds = %45
  %55 = load i8** %s, align 8
  %56 = getelementptr inbounds i8* %55, i32 1
  store i8* %56, i8** %s, align 8
  br label %57

; <label>:57                                      ; preds = %54, %45
  br label %60

; <label>:58                                      ; preds = %38
  %59 = call i8* @skip_quoted(i8** %s, i8* getelementptr inbounds ([3 x i8]* @.str229, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str124, i32 0, i32 0), i8 signext 0)
  store i8* %59, i8** %value, align 8
  br label %60

; <label>:60                                      ; preds = %58, %57
  %61 = load i8** %name, align 8
  %62 = load i8* %61
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

; <label>:65                                      ; preds = %60
  br label %129

; <label>:66                                      ; preds = %60
  %67 = load i8** %name, align 8
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([9 x i8]* @.str230, i32 0, i32 0)) nounwind readonly
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

; <label>:70                                      ; preds = %66
  %71 = load i8** %value, align 8
  %72 = load %struct.ah** %5, align 8
  %73 = getelementptr inbounds %struct.ah* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %128

; <label>:74                                      ; preds = %66
  %75 = load i8** %name, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([7 x i8]* @.str231, i32 0, i32 0)) nounwind readonly
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

; <label>:78                                      ; preds = %74
  %79 = load i8** %value, align 8
  %80 = load %struct.ah** %5, align 8
  %81 = getelementptr inbounds %struct.ah* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  br label %127

; <label>:82                                      ; preds = %74
  %83 = load i8** %name, align 8
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([9 x i8]* @.str232, i32 0, i32 0)) nounwind readonly
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

; <label>:86                                      ; preds = %82
  %87 = load i8** %value, align 8
  %88 = load %struct.ah** %5, align 8
  %89 = getelementptr inbounds %struct.ah* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  br label %126

; <label>:90                                      ; preds = %82
  %91 = load i8** %name, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([4 x i8]* @.str233, i32 0, i32 0)) nounwind readonly
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

; <label>:94                                      ; preds = %90
  %95 = load i8** %value, align 8
  %96 = load %struct.ah** %5, align 8
  %97 = getelementptr inbounds %struct.ah* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  br label %125

; <label>:98                                      ; preds = %90
  %99 = load i8** %name, align 8
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([4 x i8]* @.str234, i32 0, i32 0)) nounwind readonly
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

; <label>:102                                     ; preds = %98
  %103 = load i8** %value, align 8
  %104 = load %struct.ah** %5, align 8
  %105 = getelementptr inbounds %struct.ah* %104, i32 0, i32 4
  store i8* %103, i8** %105, align 8
  br label %124

; <label>:106                                     ; preds = %98
  %107 = load i8** %name, align 8
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([3 x i8]* @.str235, i32 0, i32 0)) nounwind readonly
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

; <label>:110                                     ; preds = %106
  %111 = load i8** %value, align 8
  %112 = load %struct.ah** %5, align 8
  %113 = getelementptr inbounds %struct.ah* %112, i32 0, i32 5
  store i8* %111, i8** %113, align 8
  br label %123

; <label>:114                                     ; preds = %106
  %115 = load i8** %name, align 8
  %116 = call i32 @strcmp(i8* %115, i8* getelementptr inbounds ([6 x i8]* @.str236, i32 0, i32 0)) nounwind readonly
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

; <label>:118                                     ; preds = %114
  %119 = load i8** %value, align 8
  %120 = load %struct.ah** %5, align 8
  %121 = getelementptr inbounds %struct.ah* %120, i32 0, i32 6
  store i8* %119, i8** %121, align 8
  br label %122

; <label>:122                                     ; preds = %118, %114
  br label %123

; <label>:123                                     ; preds = %122, %110
  br label %124

; <label>:124                                     ; preds = %123, %102
  br label %125

; <label>:125                                     ; preds = %124, %94
  br label %126

; <label>:126                                     ; preds = %125, %86
  br label %127

; <label>:127                                     ; preds = %126, %78
  br label %128

; <label>:128                                     ; preds = %127, %70
  br label %22

; <label>:129                                     ; preds = %65
  %130 = load %struct.ah** %5, align 8
  %131 = getelementptr inbounds %struct.ah* %130, i32 0, i32 0
  %132 = load i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %142

; <label>:134                                     ; preds = %129
  %135 = load %struct.ah** %5, align 8
  %136 = getelementptr inbounds %struct.ah* %135, i32 0, i32 0
  %137 = load i8** %136, align 8
  %138 = call i8* @mg_strdup(i8* %137)
  %139 = load %struct.mg_connection** %2, align 8
  %140 = getelementptr inbounds %struct.mg_connection* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.mg_request_info* %140, i32 0, i32 4
  store i8* %138, i8** %141, align 8
  br label %143

; <label>:142                                     ; preds = %129
  store i32 0, i32* %1
  br label %144

; <label>:143                                     ; preds = %134
  store i32 1, i32* %1
  br label %144

; <label>:144                                     ; preds = %143, %142, %15
  %145 = load i32* %1
  ret i32 %145
}

define internal i8* @mg_fgets(i8* %buf, i64 %size, %struct.file* %filep, i8** %p) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8**, align 8
  %eof = alloca i8*, align 8
  %len = alloca i64, align 8
  %memend = alloca i8*, align 8
  store i8* %buf, i8** %2, align 8
  store i64 %size, i64* %3, align 8
  store %struct.file* %filep, %struct.file** %4, align 8
  store i8** %p, i8*** %5, align 8
  %6 = load %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file* %6, i32 0, i32 4
  %8 = load i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %78

; <label>:10                                      ; preds = %0
  %11 = load i8*** %5, align 8
  %12 = load i8** %11
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %78

; <label>:14                                      ; preds = %10
  %15 = load %struct.file** %4, align 8
  %16 = getelementptr inbounds %struct.file* %15, i32 0, i32 2
  %17 = load i64* %16, align 8
  %18 = load %struct.file** %4, align 8
  %19 = getelementptr inbounds %struct.file* %18, i32 0, i32 4
  %20 = load i8** %19, align 8
  %21 = getelementptr inbounds i8* %20, i64 %17
  store i8* %21, i8** %memend, align 8
  %22 = load i8*** %5, align 8
  %23 = load i8** %22
  %24 = load i8** %memend, align 8
  %25 = load i8*** %5, align 8
  %26 = load i8** %25
  %27 = ptrtoint i8* %24 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = call i8* @memchr(i8* %23, i32 10, i64 %29) nounwind readonly
  store i8* %30, i8** %eof, align 8
  %31 = load i8** %eof, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

; <label>:33                                      ; preds = %14
  %34 = load i8** %eof, align 8
  %35 = getelementptr inbounds i8* %34, i64 1
  store i8* %35, i8** %eof, align 8
  br label %38

; <label>:36                                      ; preds = %14
  %37 = load i8** %memend, align 8
  store i8* %37, i8** %eof, align 8
  br label %38

; <label>:38                                      ; preds = %36, %33
  %39 = load i8** %eof, align 8
  %40 = load i8*** %5, align 8
  %41 = load i8** %40
  %42 = ptrtoint i8* %39 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = load i64* %3, align 8
  %46 = sub i64 %45, 1
  %47 = icmp ugt i64 %44, %46
  br i1 %47, label %48, label %51

; <label>:48                                      ; preds = %38
  %49 = load i64* %3, align 8
  %50 = sub i64 %49, 1
  br label %58

; <label>:51                                      ; preds = %38
  %52 = load i8** %eof, align 8
  %53 = load i8*** %5, align 8
  %54 = load i8** %53
  %55 = ptrtoint i8* %52 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  br label %58

; <label>:58                                      ; preds = %51, %48
  %59 = phi i64 [ %50, %48 ], [ %57, %51 ]
  store i64 %59, i64* %len, align 8
  %60 = load i8** %2, align 8
  %61 = load i8*** %5, align 8
  %62 = load i8** %61
  %63 = load i64* %len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %62, i64 %63, i32 1, i1 false)
  %64 = load i64* %len, align 8
  %65 = load i8** %2, align 8
  %66 = getelementptr inbounds i8* %65, i64 %64
  store i8 0, i8* %66
  %67 = load i64* %len, align 8
  %68 = load i8*** %5, align 8
  %69 = load i8** %68
  %70 = getelementptr inbounds i8* %69, i64 %67
  store i8* %70, i8** %68
  %71 = load i64* %len, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

; <label>:73                                      ; preds = %58
  %74 = load i8** %eof, align 8
  br label %76

; <label>:75                                      ; preds = %58
  br label %76

; <label>:76                                      ; preds = %75, %73
  %77 = phi i8* [ %74, %73 ], [ null, %75 ]
  store i8* %77, i8** %1
  br label %92

; <label>:78                                      ; preds = %10, %0
  %79 = load %struct.file** %4, align 8
  %80 = getelementptr inbounds %struct.file* %79, i32 0, i32 3
  %81 = load %struct._IO_FILE** %80, align 8
  %82 = icmp ne %struct._IO_FILE* %81, null
  br i1 %82, label %83, label %91

; <label>:83                                      ; preds = %78
  %84 = load i8** %2, align 8
  %85 = load i64* %3, align 8
  %86 = trunc i64 %85 to i32
  %87 = load %struct.file** %4, align 8
  %88 = getelementptr inbounds %struct.file* %87, i32 0, i32 3
  %89 = load %struct._IO_FILE** %88, align 8
  %90 = call i8* @fgets(i8* %84, i32 %86, %struct._IO_FILE* %89)
  store i8* %90, i8** %1
  br label %92

; <label>:91                                      ; preds = %78
  store i8* null, i8** %1
  br label %92

; <label>:92                                      ; preds = %91, %83, %76
  %93 = load i8** %1
  ret i8* %93
}

define internal i32 @check_password(i8* %method, i8* %ha1, i8* %uri, i8* %nonce, i8* %nc, i8* %cnonce, i8* %qop, i8* %response) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %ha2 = alloca [33 x i8], align 16
  %expected_response = alloca [33 x i8], align 16
  store i8* %method, i8** %2, align 8
  store i8* %ha1, i8** %3, align 8
  store i8* %uri, i8** %4, align 8
  store i8* %nonce, i8** %5, align 8
  store i8* %nc, i8** %6, align 8
  store i8* %cnonce, i8** %7, align 8
  store i8* %qop, i8** %8, align 8
  store i8* %response, i8** %9, align 8
  %10 = load i8** %2, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %27, label %12

; <label>:12                                      ; preds = %0
  %13 = load i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %27, label %15

; <label>:15                                      ; preds = %12
  %16 = load i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %27, label %18

; <label>:18                                      ; preds = %15
  %19 = load i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %27, label %21

; <label>:21                                      ; preds = %18
  %22 = load i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %27, label %24

; <label>:24                                      ; preds = %21
  %25 = load i8** %9, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %24, %21, %18, %15, %12, %0
  store i32 0, i32* %1
  br label %51

; <label>:28                                      ; preds = %24
  %29 = load i8** %9, align 8
  %30 = call i64 @strlen(i8* %29) nounwind readonly
  %31 = icmp ne i64 %30, 32
  br i1 %31, label %32, label %33

; <label>:32                                      ; preds = %28
  store i32 0, i32* %1
  br label %51

; <label>:33                                      ; preds = %28
  %34 = getelementptr inbounds [33 x i8]* %ha2, i32 0, i32 0
  %35 = load i8** %2, align 8
  %36 = load i8** %4, align 8
  %37 = call i8* (i8*, ...)* @mg_md5(i8* %34, i8* %35, i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), i8* %36, i8* null)
  %38 = getelementptr inbounds [33 x i8]* %expected_response, i32 0, i32 0
  %39 = load i8** %3, align 8
  %40 = load i8** %5, align 8
  %41 = load i8** %6, align 8
  %42 = load i8** %7, align 8
  %43 = load i8** %8, align 8
  %44 = getelementptr inbounds [33 x i8]* %ha2, i32 0, i32 0
  %45 = call i8* (i8*, ...)* @mg_md5(i8* %38, i8* %39, i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), i8* %40, i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), i8* %41, i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), i8* %42, i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), i8* %43, i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), i8* %44, i8* null)
  %46 = load i8** %9, align 8
  %47 = getelementptr inbounds [33 x i8]* %expected_response, i32 0, i32 0
  %48 = call i32 @mg_strcasecmp(i8* %46, i8* %47)
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %1
  br label %51

; <label>:51                                      ; preds = %33, %32, %27
  %52 = load i32* %1
  ret i32 %52
}

define internal void @open_auth_file(%struct.mg_connection* %conn, i8* %path, %struct.file* %filep) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.file*, align 8
  %name = alloca [4096 x i8], align 16
  %p = alloca i8*, align 8
  %e = alloca i8*, align 8
  %gpass = alloca i8*, align 8
  %file = alloca %struct.file, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  store i8* %path, i8** %2, align 8
  store %struct.file* %filep, %struct.file** %3, align 8
  %4 = load %struct.mg_connection** %1, align 8
  %5 = getelementptr inbounds %struct.mg_connection* %4, i32 0, i32 1
  %6 = load %struct.mg_context** %5, align 8
  %7 = getelementptr inbounds %struct.mg_context* %6, i32 0, i32 2
  %8 = getelementptr inbounds [24 x i8*]* %7, i32 0, i64 11
  %9 = load i8** %8, align 8
  store i8* %9, i8** %gpass, align 8
  %10 = bitcast %struct.file* %file to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 48, i32 8, i1 false)
  %11 = bitcast i8* %10 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %12 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %11, i32 0, i32 6
  %13 = load i8** %gpass, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %28

; <label>:15                                      ; preds = %0
  %16 = load %struct.mg_connection** %1, align 8
  %17 = load i8** %gpass, align 8
  %18 = load %struct.file** %3, align 8
  %19 = call i32 @mg_fopen(%struct.mg_connection* %16, i8* %17, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), %struct.file* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

; <label>:21                                      ; preds = %15
  %22 = load %struct.mg_connection** %1, align 8
  %23 = load i8** %gpass, align 8
  %24 = call i32* @__errno_location() nounwind readnone
  %25 = load i32* %24
  %26 = call i8* @strerror(i32 %25) nounwind
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %22, i8* getelementptr inbounds ([14 x i8]* @.str94, i32 0, i32 0), i8* %23, i8* %26)
  br label %27

; <label>:27                                      ; preds = %21, %15
  br label %84

; <label>:28                                      ; preds = %0
  %29 = load %struct.mg_connection** %1, align 8
  %30 = load i8** %2, align 8
  %31 = call i32 @mg_stat(%struct.mg_connection* %29, i8* %30, %struct.file* %file)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

; <label>:33                                      ; preds = %28
  %34 = getelementptr inbounds %struct.file* %file, i32 0, i32 0
  %35 = load i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

; <label>:37                                      ; preds = %33
  %38 = load %struct.mg_connection** %1, align 8
  %39 = getelementptr inbounds [4096 x i8]* %name, i32 0, i32 0
  %40 = load i8** %2, align 8
  %41 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %38, i8* %39, i64 4096, i8* getelementptr inbounds ([7 x i8]* @.str107, i32 0, i32 0), i8* %40, i32 47, i8* getelementptr inbounds ([10 x i8]* @.str240, i32 0, i32 0))
  %42 = load %struct.mg_connection** %1, align 8
  %43 = getelementptr inbounds [4096 x i8]* %name, i32 0, i32 0
  %44 = load %struct.file** %3, align 8
  %45 = call i32 @mg_fopen(%struct.mg_connection* %42, i8* %43, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), %struct.file* %44)
  br label %83

; <label>:46                                      ; preds = %33, %28
  %47 = load i8** %2, align 8
  store i8* %47, i8** %p, align 8
  %48 = load i8** %p, align 8
  %49 = load i8** %p, align 8
  %50 = call i64 @strlen(i8* %49) nounwind readonly
  %51 = getelementptr inbounds i8* %48, i64 %50
  %52 = getelementptr inbounds i8* %51, i64 -1
  store i8* %52, i8** %e, align 8
  br label %53

; <label>:53                                      ; preds = %65, %46
  %54 = load i8** %e, align 8
  %55 = load i8** %p, align 8
  %56 = icmp ugt i8* %54, %55
  br i1 %56, label %57, label %68

; <label>:57                                      ; preds = %53
  %58 = load i8** %e, align 8
  %59 = getelementptr inbounds i8* %58, i64 0
  %60 = load i8* %59
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 47
  br i1 %62, label %63, label %64

; <label>:63                                      ; preds = %57
  br label %68

; <label>:64                                      ; preds = %57
  br label %65

; <label>:65                                      ; preds = %64
  %66 = load i8** %e, align 8
  %67 = getelementptr inbounds i8* %66, i32 -1
  store i8* %67, i8** %e, align 8
  br label %53

; <label>:68                                      ; preds = %63, %53
  %69 = load %struct.mg_connection** %1, align 8
  %70 = getelementptr inbounds [4096 x i8]* %name, i32 0, i32 0
  %71 = load i8** %e, align 8
  %72 = load i8** %p, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = trunc i64 %75 to i32
  %77 = load i8** %p, align 8
  %78 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %69, i8* %70, i64 4096, i8* getelementptr inbounds ([9 x i8]* @.str241, i32 0, i32 0), i32 %76, i8* %77, i32 47, i8* getelementptr inbounds ([10 x i8]* @.str240, i32 0, i32 0))
  %79 = load %struct.mg_connection** %1, align 8
  %80 = getelementptr inbounds [4096 x i8]* %name, i32 0, i32 0
  %81 = load %struct.file** %3, align 8
  %82 = call i32 @mg_fopen(%struct.mg_connection* %79, i8* %80, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), %struct.file* %81)
  br label %83

; <label>:83                                      ; preds = %68, %37
  br label %84

; <label>:84                                      ; preds = %83, %27
  ret void
}

define internal i32 @parse_net(i8* %spec, i32* %net, i32* %mask) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %slash = alloca i32, align 4
  %len = alloca i32, align 4
  store i8* %spec, i8** %1, align 8
  store i32* %net, i32** %2, align 8
  store i32* %mask, i32** %3, align 8
  store i32 32, i32* %slash, align 4
  store i32 0, i32* %len, align 4
  %4 = load i8** %1, align 8
  %5 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([17 x i8]* @.str246, i32 0, i32 0), i32* %a, i32* %b, i32* %c, i32* %d, i32* %slash, i32* %n) nounwind
  %6 = icmp eq i32 %5, 5
  br i1 %6, label %11, label %7

; <label>:7                                       ; preds = %0
  %8 = load i8** %1, align 8
  %9 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %8, i8* getelementptr inbounds ([14 x i8]* @.str247, i32 0, i32 0), i32* %a, i32* %b, i32* %c, i32* %d, i32* %n) nounwind
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %56

; <label>:11                                      ; preds = %7, %0
  %12 = load i32* %a, align 4
  %13 = call i32 @isbyte(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %56

; <label>:15                                      ; preds = %11
  %16 = load i32* %b, align 4
  %17 = call i32 @isbyte(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %56

; <label>:19                                      ; preds = %15
  %20 = load i32* %c, align 4
  %21 = call i32 @isbyte(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %56

; <label>:23                                      ; preds = %19
  %24 = load i32* %d, align 4
  %25 = call i32 @isbyte(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %56

; <label>:27                                      ; preds = %23
  %28 = load i32* %slash, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %56

; <label>:30                                      ; preds = %27
  %31 = load i32* %slash, align 4
  %32 = icmp slt i32 %31, 33
  br i1 %32, label %33, label %56

; <label>:33                                      ; preds = %30
  %34 = load i32* %n, align 4
  store i32 %34, i32* %len, align 4
  %35 = load i32* %a, align 4
  %36 = shl i32 %35, 24
  %37 = load i32* %b, align 4
  %38 = shl i32 %37, 16
  %39 = or i32 %36, %38
  %40 = load i32* %c, align 4
  %41 = shl i32 %40, 8
  %42 = or i32 %39, %41
  %43 = load i32* %d, align 4
  %44 = or i32 %42, %43
  %45 = load i32** %2, align 8
  store i32 %44, i32* %45
  %46 = load i32* %slash, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

; <label>:48                                      ; preds = %33
  %49 = load i32* %slash, align 4
  %50 = sub nsw i32 32, %49
  %51 = shl i32 -1, %50
  br label %53

; <label>:52                                      ; preds = %33
  br label %53

; <label>:53                                      ; preds = %52, %48
  %54 = phi i32 [ %51, %48 ], [ 0, %52 ]
  %55 = load i32** %3, align 8
  store i32 %54, i32* %55
  br label %56

; <label>:56                                      ; preds = %53, %30, %27, %23, %19, %15, %11, %7
  %57 = load i32* %len, align 4
  ret i32 %57
}

define internal i32 @isbyte(i32 %n) nounwind uwtable {
  %1 = alloca i32, align 4
  store i32 %n, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = icmp sge i32 %2, 0
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = load i32* %1, align 4
  %6 = icmp sle i32 %5, 255
  br label %7

; <label>:7                                       ; preds = %4, %0
  %8 = phi i1 [ false, %0 ], [ %6, %4 ]
  %9 = zext i1 %8 to i32
  ret i32 %9
}

declare i8* @strstr(i8*, i8*) nounwind readonly

declare i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*)

declare i32 @poll(%struct.pollfd*, i64, i32)

define internal void @accept_new_connection(%struct.socket* %listener, %struct.mg_context* %ctx) nounwind uwtable {
  %1 = alloca %struct.socket*, align 8
  %2 = alloca %struct.mg_context*, align 8
  %so = alloca %struct.socket, align 4
  %src_addr = alloca [50 x i8], align 16
  %len = alloca i32, align 4
  %on = alloca i32, align 4
  store %struct.socket* %listener, %struct.socket** %1, align 8
  store %struct.mg_context* %ctx, %struct.mg_context** %2, align 8
  store i32 16, i32* %len, align 4
  store i32 1, i32* %on, align 4
  %3 = load %struct.socket** %1, align 8
  %4 = getelementptr inbounds %struct.socket* %3, i32 0, i32 0
  %5 = load i32* %4, align 4
  %6 = getelementptr inbounds %struct.socket* %so, i32 0, i32 2
  %7 = bitcast %union.usa* %6 to %struct.sockaddr*
  %8 = call i32 @accept(i32 %5, %struct.sockaddr* %7, i32* %len)
  %9 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = icmp eq i32 %8, -1
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  br label %83

; <label>:12                                      ; preds = %0
  %13 = load %struct.mg_context** %2, align 8
  %14 = getelementptr inbounds %struct.socket* %so, i32 0, i32 2
  %15 = bitcast %union.usa* %14 to %struct.sockaddr_in*
  %16 = getelementptr inbounds %struct.sockaddr_in* %15, i32 0, i32 2
  %17 = bitcast %struct.in_addr* %16 to i32*
  %18 = load i32* %17
  %19 = call i32 @ntohl(i32 %18) nounwind readnone
  %20 = call i32 @check_acl(%struct.mg_context* %13, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

; <label>:22                                      ; preds = %12
  %23 = getelementptr inbounds [50 x i8]* %src_addr, i32 0, i32 0
  %24 = getelementptr inbounds %struct.socket* %so, i32 0, i32 2
  call void @sockaddr_to_string(i8* %23, i64 50, %union.usa* %24)
  %25 = load %struct.mg_context** %2, align 8
  %26 = call %struct.mg_connection* @fc(%struct.mg_context* %25)
  %27 = getelementptr inbounds [50 x i8]* %src_addr, i32 0, i32 0
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %26, i8* getelementptr inbounds ([33 x i8]* @.str257, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @__func__.accept_new_connection, i32 0, i32 0), i8* %27)
  %28 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  %29 = load i32* %28, align 4
  %30 = call i32 @close(i32 %29)
  br label %82

; <label>:31                                      ; preds = %12
  %32 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  %33 = load i32* %32, align 4
  call void @set_close_on_exec(i32 %33)
  %34 = load %struct.socket** %1, align 8
  %35 = bitcast %struct.socket* %34 to i8*
  %36 = getelementptr i8* %35, i32 36
  %37 = bitcast i8* %36 to i32*
  %38 = load i32* %37, align 4
  %39 = and i32 %38, 1
  %40 = and i32 %39, 1
  %41 = bitcast %struct.socket* %so to i8*
  %42 = getelementptr i8* %41, i32 36
  %43 = bitcast i8* %42 to i32*
  %44 = and i32 %40, 1
  %45 = load i32* %43, align 4
  %46 = and i32 %45, -2
  %47 = or i32 %46, %44
  store i32 %47, i32* %43, align 4
  %48 = load %struct.socket** %1, align 8
  %49 = bitcast %struct.socket* %48 to i8*
  %50 = getelementptr i8* %49, i32 36
  %51 = bitcast i8* %50 to i32*
  %52 = load i32* %51, align 4
  %53 = lshr i32 %52, 1
  %54 = and i32 %53, 1
  %55 = and i32 %54, 1
  %56 = bitcast %struct.socket* %so to i8*
  %57 = getelementptr i8* %56, i32 36
  %58 = bitcast i8* %57 to i32*
  %59 = and i32 %55, 1
  %60 = shl i32 %59, 1
  %61 = load i32* %58, align 4
  %62 = and i32 %61, -3
  %63 = or i32 %62, %60
  store i32 %63, i32* %58, align 4
  %64 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  %65 = load i32* %64, align 4
  %66 = getelementptr inbounds %struct.socket* %so, i32 0, i32 1
  %67 = bitcast %union.usa* %66 to %struct.sockaddr*
  %68 = call i32 @getsockname(i32 %65, %struct.sockaddr* %67, i32* %len) nounwind
  %69 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  %70 = load i32* %69, align 4
  %71 = bitcast i32* %on to i8*
  %72 = call i32 @setsockopt(i32 %70, i32 1, i32 9, i8* %71, i32 4) nounwind
  %73 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  %74 = load i32* %73, align 4
  %75 = load %struct.mg_context** %2, align 8
  %76 = getelementptr inbounds %struct.mg_context* %75, i32 0, i32 2
  %77 = getelementptr inbounds [24 x i8*]* %76, i32 0, i64 23
  %78 = load i8** %77, align 8
  %79 = call i32 @atoi(i8* %78) nounwind readonly
  %80 = call i32 @set_sock_timeout(i32 %74, i32 %79)
  %81 = load %struct.mg_context** %2, align 8
  call void @produce_socket(%struct.mg_context* %81, %struct.socket* %so)
  br label %82

; <label>:82                                      ; preds = %31, %22
  br label %83

; <label>:83                                      ; preds = %82, %11
  ret void
}

define internal void @close_all_listening_sockets(%struct.mg_context* %ctx) nounwind uwtable {
  %1 = alloca %struct.mg_context*, align 8
  %i = alloca i32, align 4
  store %struct.mg_context* %ctx, %struct.mg_context** %1, align 8
  store i32 0, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %18, %0
  %3 = load i32* %i, align 4
  %4 = load %struct.mg_context** %1, align 8
  %5 = getelementptr inbounds %struct.mg_context* %4, i32 0, i32 6
  %6 = load i32* %5, align 4
  %7 = icmp slt i32 %3, %6
  br i1 %7, label %8, label %21

; <label>:8                                       ; preds = %2
  %9 = load i32* %i, align 4
  %10 = sext i32 %9 to i64
  %11 = load %struct.mg_context** %1, align 8
  %12 = getelementptr inbounds %struct.mg_context* %11, i32 0, i32 5
  %13 = load %struct.socket** %12, align 8
  %14 = getelementptr inbounds %struct.socket* %13, i64 %10
  %15 = getelementptr inbounds %struct.socket* %14, i32 0, i32 0
  %16 = load i32* %15, align 4
  %17 = call i32 @close(i32 %16)
  br label %18

; <label>:18                                      ; preds = %8
  %19 = load i32* %i, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %i, align 4
  br label %2

; <label>:21                                      ; preds = %2
  %22 = load %struct.mg_context** %1, align 8
  %23 = getelementptr inbounds %struct.mg_context* %22, i32 0, i32 5
  %24 = load %struct.socket** %23, align 8
  %25 = bitcast %struct.socket* %24 to i8*
  call void @free(i8* %25) nounwind
  ret void
}

declare i32 @pthread_cond_broadcast(%union.pthread_cond_t*) nounwind

declare i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) nounwind

declare i32 @pthread_cond_destroy(%union.pthread_cond_t*) nounwind

define internal void @uninitialize_ssl(%struct.mg_context* %ctx) nounwind uwtable {
  %1 = alloca %struct.mg_context*, align 8
  %i = alloca i32, align 4
  store %struct.mg_context* %ctx, %struct.mg_context** %1, align 8
  %2 = load %struct.mg_context** %1, align 8
  %3 = getelementptr inbounds %struct.mg_context* %2, i32 0, i32 1
  %4 = load %struct.ssl_ctx_st** %3, align 8
  %5 = icmp ne %struct.ssl_ctx_st* %4, null
  br i1 %5, label %6, label %29

; <label>:6                                       ; preds = %0
  %7 = load void ()** getelementptr inbounds ([6 x %struct.ssl_func]* @crypto_sw, i32 0, i64 1, i32 1), align 8
  %8 = bitcast void ()* %7 to void (void (i32, i32, i8*, i32)*)*
  call void %8(void (i32, i32, i8*, i32)* null)
  store i32 0, i32* %i, align 4
  br label %9

; <label>:9                                       ; preds = %21, %6
  %10 = load i32* %i, align 4
  %11 = load void ()** getelementptr inbounds ([6 x %struct.ssl_func]* @crypto_sw, i32 0, i64 0, i32 1), align 8
  %12 = bitcast void ()* %11 to i32 ()*
  %13 = call i32 %12()
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %24

; <label>:15                                      ; preds = %9
  %16 = load i32* %i, align 4
  %17 = sext i32 %16 to i64
  %18 = load %union.pthread_mutex_t** @ssl_mutexes, align 8
  %19 = getelementptr inbounds %union.pthread_mutex_t* %18, i64 %17
  %20 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %19) nounwind
  br label %21

; <label>:21                                      ; preds = %15
  %22 = load i32* %i, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %i, align 4
  br label %9

; <label>:24                                      ; preds = %9
  %25 = load void ()** getelementptr inbounds ([6 x %struct.ssl_func]* @crypto_sw, i32 0, i64 1, i32 1), align 8
  %26 = bitcast void ()* %25 to void (void (i32, i32, i8*, i32)*)*
  call void %26(void (i32, i32, i8*, i32)* null)
  %27 = load void ()** getelementptr inbounds ([6 x %struct.ssl_func]* @crypto_sw, i32 0, i64 2, i32 1), align 8
  %28 = bitcast void ()* %27 to void (i64 ()*)*
  call void %28(i64 ()* null)
  br label %29

; <label>:29                                      ; preds = %24, %0
  ret void
}

declare i32 @accept(i32, %struct.sockaddr*, i32*)

define internal i32 @check_acl(%struct.mg_context* %ctx, i32 %remote_ip) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mg_context*, align 8
  %3 = alloca i32, align 4
  %allowed = alloca i32, align 4
  %flag = alloca i32, align 4
  %net = alloca i32, align 4
  %mask = alloca i32, align 4
  %vec = alloca %struct.vec, align 8
  %list = alloca i8*, align 8
  store %struct.mg_context* %ctx, %struct.mg_context** %2, align 8
  store i32 %remote_ip, i32* %3, align 4
  %4 = load %struct.mg_context** %2, align 8
  %5 = getelementptr inbounds %struct.mg_context* %4, i32 0, i32 2
  %6 = getelementptr inbounds [24 x i8*]* %5, i32 0, i64 14
  %7 = load i8** %6, align 8
  store i8* %7, i8** %list, align 8
  %8 = load i8** %list, align 8
  %9 = icmp eq i8* %8, null
  %10 = select i1 %9, i32 43, i32 45
  store i32 %10, i32* %allowed, align 4
  br label %11

; <label>:11                                      ; preds = %43, %0
  %12 = load i8** %list, align 8
  %13 = call i8* @next_option(i8* %12, %struct.vec* %vec, %struct.vec* null)
  store i8* %13, i8** %list, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %44

; <label>:15                                      ; preds = %11
  %16 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 0
  %17 = load i8** %16, align 8
  %18 = getelementptr inbounds i8* %17, i64 0
  %19 = load i8* %18
  %20 = sext i8 %19 to i32
  store i32 %20, i32* %flag, align 4
  %21 = load i32* %flag, align 4
  %22 = icmp ne i32 %21, 43
  br i1 %22, label %23, label %26

; <label>:23                                      ; preds = %15
  %24 = load i32* %flag, align 4
  %25 = icmp ne i32 %24, 45
  br i1 %25, label %32, label %26

; <label>:26                                      ; preds = %23, %15
  %27 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 0
  %28 = load i8** %27, align 8
  %29 = getelementptr inbounds i8* %28, i64 1
  %30 = call i32 @parse_net(i8* %29, i32* %net, i32* %mask)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

; <label>:32                                      ; preds = %26, %23
  %33 = load %struct.mg_context** %2, align 8
  %34 = call %struct.mg_connection* @fc(%struct.mg_context* %33)
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %34, i8* getelementptr inbounds ([36 x i8]* @.str258, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @__func__.check_acl, i32 0, i32 0))
  store i32 -1, i32* %1
  br label %48

; <label>:35                                      ; preds = %26
  %36 = load i32* %net, align 4
  %37 = load i32* %3, align 4
  %38 = load i32* %mask, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %43

; <label>:41                                      ; preds = %35
  %42 = load i32* %flag, align 4
  store i32 %42, i32* %allowed, align 4
  br label %43

; <label>:43                                      ; preds = %41, %35
  br label %11

; <label>:44                                      ; preds = %11
  %45 = load i32* %allowed, align 4
  %46 = icmp eq i32 %45, 43
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %1
  br label %48

; <label>:48                                      ; preds = %44, %32
  %49 = load i32* %1
  ret i32 %49
}

declare i32 @setsockopt(i32, i32, i32, i8*, i32) nounwind

define internal i32 @set_sock_timeout(i32 %sock, i32 %milliseconds) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %t = alloca %struct.timeval, align 8
  store i32 %sock, i32* %1, align 4
  store i32 %milliseconds, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = sdiv i32 %3, 1000
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.timeval* %t, i32 0, i32 0
  store i64 %5, i64* %6, align 8
  %7 = load i32* %2, align 4
  %8 = mul nsw i32 %7, 1000
  %9 = srem i32 %8, 1000000
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.timeval* %t, i32 0, i32 1
  store i64 %10, i64* %11, align 8
  %12 = load i32* %1, align 4
  %13 = bitcast %struct.timeval* %t to i8*
  %14 = call i32 @setsockopt(i32 %12, i32 1, i32 20, i8* %13, i32 16) nounwind
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

; <label>:16                                      ; preds = %0
  %17 = load i32* %1, align 4
  %18 = bitcast %struct.timeval* %t to i8*
  %19 = call i32 @setsockopt(i32 %17, i32 1, i32 21, i8* %18, i32 16) nounwind
  %20 = icmp ne i32 %19, 0
  br label %21

; <label>:21                                      ; preds = %16, %0
  %22 = phi i1 [ true, %0 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

define internal void @produce_socket(%struct.mg_context* %ctx, %struct.socket* %sp) nounwind uwtable {
  %1 = alloca %struct.mg_context*, align 8
  %2 = alloca %struct.socket*, align 8
  store %struct.mg_context* %ctx, %struct.mg_context** %1, align 8
  store %struct.socket* %sp, %struct.socket** %2, align 8
  %3 = load %struct.mg_context** %1, align 8
  %4 = getelementptr inbounds %struct.mg_context* %3, i32 0, i32 8
  %5 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %4) nounwind
  br label %6

; <label>:6                                       ; preds = %22, %0
  %7 = load %struct.mg_context** %1, align 8
  %8 = getelementptr inbounds %struct.mg_context* %7, i32 0, i32 0
  %9 = load volatile i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

; <label>:11                                      ; preds = %6
  %12 = load %struct.mg_context** %1, align 8
  %13 = getelementptr inbounds %struct.mg_context* %12, i32 0, i32 11
  %14 = load volatile i32* %13, align 4
  %15 = load %struct.mg_context** %1, align 8
  %16 = getelementptr inbounds %struct.mg_context* %15, i32 0, i32 12
  %17 = load volatile i32* %16, align 4
  %18 = sub nsw i32 %14, %17
  %19 = icmp sge i32 %18, 20
  br label %20

; <label>:20                                      ; preds = %11, %6
  %21 = phi i1 [ false, %6 ], [ %19, %11 ]
  br i1 %21, label %22, label %28

; <label>:22                                      ; preds = %20
  %23 = load %struct.mg_context** %1, align 8
  %24 = getelementptr inbounds %struct.mg_context* %23, i32 0, i32 14
  %25 = load %struct.mg_context** %1, align 8
  %26 = getelementptr inbounds %struct.mg_context* %25, i32 0, i32 8
  %27 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %24, %union.pthread_mutex_t* %26)
  br label %6

; <label>:28                                      ; preds = %20
  %29 = load %struct.mg_context** %1, align 8
  %30 = getelementptr inbounds %struct.mg_context* %29, i32 0, i32 11
  %31 = load volatile i32* %30, align 4
  %32 = load %struct.mg_context** %1, align 8
  %33 = getelementptr inbounds %struct.mg_context* %32, i32 0, i32 12
  %34 = load volatile i32* %33, align 4
  %35 = sub nsw i32 %31, %34
  %36 = icmp slt i32 %35, 20
  br i1 %36, label %37, label %53

; <label>:37                                      ; preds = %28
  %38 = load %struct.mg_context** %1, align 8
  %39 = getelementptr inbounds %struct.mg_context* %38, i32 0, i32 11
  %40 = load volatile i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = urem i64 %41, 20
  %43 = load %struct.mg_context** %1, align 8
  %44 = getelementptr inbounds %struct.mg_context* %43, i32 0, i32 10
  %45 = getelementptr inbounds [20 x %struct.socket]* %44, i32 0, i64 %42
  %46 = load %struct.socket** %2, align 8
  %47 = bitcast %struct.socket* %45 to i8*
  %48 = bitcast %struct.socket* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 40, i32 4, i1 false)
  %49 = load %struct.mg_context** %1, align 8
  %50 = getelementptr inbounds %struct.mg_context* %49, i32 0, i32 11
  %51 = load volatile i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store volatile i32 %52, i32* %50, align 4
  br label %53

; <label>:53                                      ; preds = %37, %28
  %54 = load %struct.mg_context** %1, align 8
  %55 = getelementptr inbounds %struct.mg_context* %54, i32 0, i32 13
  %56 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %55) nounwind
  %57 = load %struct.mg_context** %1, align 8
  %58 = getelementptr inbounds %struct.mg_context* %57, i32 0, i32 8
  %59 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %58) nounwind
  ret void
}

declare %struct.passwd* @getpwnam(i8*)

declare i32 @setgid(i32) nounwind

declare i32 @setuid(i32) nounwind

define internal i32 @parse_port_string(%struct.vec* %vec, %struct.socket* %so) nounwind uwtable {
  %1 = alloca %struct.vec*, align 8
  %2 = alloca %struct.socket*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %ch = alloca i32, align 4
  %len = alloca i32, align 4
  %port = alloca i32, align 4
  store %struct.vec* %vec, %struct.vec** %1, align 8
  store %struct.socket* %so, %struct.socket** %2, align 8
  %3 = load %struct.socket** %2, align 8
  %4 = bitcast %struct.socket* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 40, i32 1, i1 false)
  %5 = load %struct.socket** %2, align 8
  %6 = getelementptr inbounds %struct.socket* %5, i32 0, i32 1
  %7 = bitcast %union.usa* %6 to %struct.sockaddr_in*
  %8 = getelementptr inbounds %struct.sockaddr_in* %7, i32 0, i32 0
  store i16 2, i16* %8, align 2
  %9 = load %struct.vec** %1, align 8
  %10 = getelementptr inbounds %struct.vec* %9, i32 0, i32 0
  %11 = load i8** %10, align 8
  %12 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([17 x i8]* @.str266, i32 0, i32 0), i32* %a, i32* %b, i32* %c, i32* %d, i32* %port, i32* %len) nounwind
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %14, label %38

; <label>:14                                      ; preds = %0
  %15 = load i32* %a, align 4
  %16 = shl i32 %15, 24
  %17 = load i32* %b, align 4
  %18 = shl i32 %17, 16
  %19 = or i32 %16, %18
  %20 = load i32* %c, align 4
  %21 = shl i32 %20, 8
  %22 = or i32 %19, %21
  %23 = load i32* %d, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @htonl(i32 %24) nounwind readnone
  %26 = load %struct.socket** %2, align 8
  %27 = getelementptr inbounds %struct.socket* %26, i32 0, i32 1
  %28 = bitcast %union.usa* %27 to %struct.sockaddr_in*
  %29 = getelementptr inbounds %struct.sockaddr_in* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.in_addr* %29, i32 0, i32 0
  store i32 %25, i32* %30, align 4
  %31 = load i32* %port, align 4
  %32 = trunc i32 %31 to i16
  %33 = call zeroext i16 @htons(i16 zeroext %32) nounwind readnone
  %34 = load %struct.socket** %2, align 8
  %35 = getelementptr inbounds %struct.socket* %34, i32 0, i32 1
  %36 = bitcast %union.usa* %35 to %struct.sockaddr_in*
  %37 = getelementptr inbounds %struct.sockaddr_in* %36, i32 0, i32 1
  store i16 %33, i16* %37, align 2
  br label %54

; <label>:38                                      ; preds = %0
  %39 = load %struct.vec** %1, align 8
  %40 = getelementptr inbounds %struct.vec* %39, i32 0, i32 0
  %41 = load i8** %40, align 8
  %42 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %41, i8* getelementptr inbounds ([5 x i8]* @.str267, i32 0, i32 0), i32* %port, i32* %len) nounwind
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %52

; <label>:44                                      ; preds = %38
  %45 = load i32* %port, align 4
  %46 = trunc i32 %45 to i16
  %47 = call zeroext i16 @htons(i16 zeroext %46) nounwind readnone
  %48 = load %struct.socket** %2, align 8
  %49 = getelementptr inbounds %struct.socket* %48, i32 0, i32 1
  %50 = bitcast %union.usa* %49 to %struct.sockaddr_in*
  %51 = getelementptr inbounds %struct.sockaddr_in* %50, i32 0, i32 1
  store i16 %47, i16* %51, align 2
  br label %53

; <label>:52                                      ; preds = %38
  store i32 0, i32* %len, align 4
  store i32 0, i32* %port, align 4
  br label %53

; <label>:53                                      ; preds = %52, %44
  br label %54

; <label>:54                                      ; preds = %53, %14
  %55 = load i32* %len, align 4
  %56 = zext i32 %55 to i64
  %57 = load %struct.vec** %1, align 8
  %58 = getelementptr inbounds %struct.vec* %57, i32 0, i32 0
  %59 = load i8** %58, align 8
  %60 = getelementptr inbounds i8* %59, i64 %56
  %61 = load i8* %60
  %62 = sext i8 %61 to i32
  store i32 %62, i32* %ch, align 4
  %63 = load i32* %ch, align 4
  %64 = icmp eq i32 %63, 115
  %65 = zext i1 %64 to i32
  %66 = load %struct.socket** %2, align 8
  %67 = and i32 %65, 1
  %68 = bitcast %struct.socket* %66 to i8*
  %69 = getelementptr i8* %68, i32 36
  %70 = bitcast i8* %69 to i32*
  %71 = and i32 %67, 1
  %72 = load i32* %70, align 4
  %73 = and i32 %72, -2
  %74 = or i32 %73, %71
  store i32 %74, i32* %70, align 4
  %75 = load i32* %ch, align 4
  %76 = icmp eq i32 %75, 114
  %77 = zext i1 %76 to i32
  %78 = load %struct.socket** %2, align 8
  %79 = and i32 %77, 1
  %80 = bitcast %struct.socket* %78 to i8*
  %81 = getelementptr i8* %80, i32 36
  %82 = bitcast i8* %81 to i32*
  %83 = and i32 %79, 1
  %84 = shl i32 %83, 1
  %85 = load i32* %82, align 4
  %86 = and i32 %85, -3
  %87 = or i32 %86, %84
  store i32 %87, i32* %82, align 4
  %88 = load i32* %port, align 4
  %89 = call i32 @is_valid_port(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

; <label>:91                                      ; preds = %54
  %92 = load i32* %ch, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %103, label %94

; <label>:94                                      ; preds = %91
  %95 = load i32* %ch, align 4
  %96 = icmp eq i32 %95, 115
  br i1 %96, label %103, label %97

; <label>:97                                      ; preds = %94
  %98 = load i32* %ch, align 4
  %99 = icmp eq i32 %98, 114
  br i1 %99, label %103, label %100

; <label>:100                                     ; preds = %97
  %101 = load i32* %ch, align 4
  %102 = icmp eq i32 %101, 44
  br label %103

; <label>:103                                     ; preds = %100, %97, %94, %91
  %104 = phi i1 [ true, %97 ], [ true, %94 ], [ true, %91 ], [ %102, %100 ]
  br label %105

; <label>:105                                     ; preds = %103, %54
  %106 = phi i1 [ false, %54 ], [ %104, %103 ]
  %107 = zext i1 %106 to i32
  ret i32 %107
}

declare i32 @socket(i32, i32, i32) nounwind

declare i32 @bind(i32, %struct.sockaddr*, i32) nounwind

declare i32 @listen(i32, i32) nounwind

declare i32 @htonl(i32) nounwind readnone

declare zeroext i16 @htons(i16 zeroext) nounwind readnone

define internal i32 @is_valid_port(i32 %port) nounwind uwtable {
  %1 = alloca i32, align 4
  store i32 %port, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = icmp ugt i32 %2, 0
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = load i32* %1, align 4
  %6 = icmp ult i32 %5, 65535
  br label %7

; <label>:7                                       ; preds = %4, %0
  %8 = phi i1 [ false, %0 ], [ %6, %4 ]
  %9 = zext i1 %8 to i32
  ret i32 %9
}

define internal i32 @load_dll(%struct.mg_context* %ctx, i8* %dll_name, %struct.ssl_func* %sw) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mg_context*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ssl_func*, align 8
  %u = alloca %union.anon, align 8
  %dll_handle = alloca i8*, align 8
  %fp = alloca %struct.ssl_func*, align 8
  store %struct.mg_context* %ctx, %struct.mg_context** %2, align 8
  store i8* %dll_name, i8** %3, align 8
  store %struct.ssl_func* %sw, %struct.ssl_func** %4, align 8
  %5 = load i8** %3, align 8
  %6 = call i8* @dlopen(i8* %5, i32 1) nounwind
  store i8* %6, i8** %dll_handle, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %12

; <label>:8                                       ; preds = %0
  %9 = load %struct.mg_context** %2, align 8
  %10 = call %struct.mg_connection* @fc(%struct.mg_context* %9)
  %11 = load i8** %3, align 8
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %10, i8* getelementptr inbounds ([19 x i8]* @.str272, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @__func__.load_dll, i32 0, i32 0), i8* %11)
  store i32 0, i32* %1
  br label %46

; <label>:12                                      ; preds = %0
  %13 = load %struct.ssl_func** %4, align 8
  store %struct.ssl_func* %13, %struct.ssl_func** %fp, align 8
  br label %14

; <label>:14                                      ; preds = %42, %12
  %15 = load %struct.ssl_func** %fp, align 8
  %16 = getelementptr inbounds %struct.ssl_func* %15, i32 0, i32 0
  %17 = load i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %45

; <label>:19                                      ; preds = %14
  %20 = load i8** %dll_handle, align 8
  %21 = load %struct.ssl_func** %fp, align 8
  %22 = getelementptr inbounds %struct.ssl_func* %21, i32 0, i32 0
  %23 = load i8** %22, align 8
  %24 = call i8* @dlsym(i8* %20, i8* %23) nounwind
  %25 = bitcast %union.anon* %u to i8**
  store i8* %24, i8** %25, align 8
  %26 = bitcast %union.anon* %u to void ()**
  %27 = load void ()** %26, align 8
  %28 = icmp eq void ()* %27, null
  br i1 %28, label %29, label %36

; <label>:29                                      ; preds = %19
  %30 = load %struct.mg_context** %2, align 8
  %31 = call %struct.mg_connection* @fc(%struct.mg_context* %30)
  %32 = load i8** %3, align 8
  %33 = load %struct.ssl_func** %fp, align 8
  %34 = getelementptr inbounds %struct.ssl_func* %33, i32 0, i32 0
  %35 = load i8** %34, align 8
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %31, i8* getelementptr inbounds ([23 x i8]* @.str273, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @__func__.load_dll, i32 0, i32 0), i8* %32, i8* %35)
  store i32 0, i32* %1
  br label %46

; <label>:36                                      ; preds = %19
  %37 = bitcast %union.anon* %u to void ()**
  %38 = load void ()** %37, align 8
  %39 = load %struct.ssl_func** %fp, align 8
  %40 = getelementptr inbounds %struct.ssl_func* %39, i32 0, i32 1
  store void ()* %38, void ()** %40, align 8
  br label %41

; <label>:41                                      ; preds = %36
  br label %42

; <label>:42                                      ; preds = %41
  %43 = load %struct.ssl_func** %fp, align 8
  %44 = getelementptr inbounds %struct.ssl_func* %43, i32 1
  store %struct.ssl_func* %44, %struct.ssl_func** %fp, align 8
  br label %14

; <label>:45                                      ; preds = %14
  store i32 1, i32* %1
  br label %46

; <label>:46                                      ; preds = %45, %29, %8
  %47 = load i32* %1
  ret i32 %47
}

define internal i8* @ssl_error() nounwind uwtable {
  %err = alloca i64, align 8
  %1 = load void ()** getelementptr inbounds ([6 x %struct.ssl_func]* @crypto_sw, i32 0, i64 3, i32 1), align 8
  %2 = bitcast void ()* %1 to i64 ()*
  %3 = call i64 %2()
  store i64 %3, i64* %err, align 8
  %4 = load i64* %err, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  br label %12

; <label>:7                                       ; preds = %0
  %8 = load void ()** getelementptr inbounds ([6 x %struct.ssl_func]* @crypto_sw, i32 0, i64 4, i32 1), align 8
  %9 = bitcast void ()* %8 to i8* (i64, i8*)*
  %10 = load i64* %err, align 8
  %11 = call i8* %9(i64 %10, i8* null)
  br label %12

; <label>:12                                      ; preds = %7, %6
  %13 = phi i8* [ getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), %6 ], [ %11, %7 ]
  ret i8* %13
}

declare noalias i8* @malloc(i64) nounwind

define internal void @ssl_locking_callback(i32 %mode, i32 %mutex_num, i8* %file, i32 %line) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 %mode, i32* %1, align 4
  store i32 %mutex_num, i32* %2, align 4
  store i8* %file, i8** %3, align 8
  store i32 %line, i32* %4, align 4
  %5 = load i32* %4, align 4
  %6 = load i8** %3, align 8
  %7 = load i32* %1, align 4
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

; <label>:10                                      ; preds = %0
  %11 = load i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = load %union.pthread_mutex_t** @ssl_mutexes, align 8
  %14 = getelementptr inbounds %union.pthread_mutex_t* %13, i64 %12
  %15 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %14) nounwind
  br label %22

; <label>:16                                      ; preds = %0
  %17 = load i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = load %union.pthread_mutex_t** @ssl_mutexes, align 8
  %20 = getelementptr inbounds %union.pthread_mutex_t* %19, i64 %18
  %21 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %20) nounwind
  br label %22

; <label>:22                                      ; preds = %16, %10
  ret void
}

define internal i64 @ssl_id_callback() nounwind uwtable {
  %1 = call i64 @pthread_self() nounwind readnone
  ret i64 %1
}

declare i64 @pthread_self() nounwind readnone

declare i8* @dlopen(i8*, i32) nounwind

declare i8* @dlsym(i8*, i8*) nounwind

define internal i8* @mg_strndup(i8* %ptr, i64 %len) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %p = alloca i8*, align 8
  store i8* %ptr, i8** %1, align 8
  store i64 %len, i64* %2, align 8
  %3 = load i64* %2, align 8
  %4 = add i64 %3, 1
  %5 = call noalias i8* @malloc(i64 %4) nounwind
  store i8* %5, i8** %p, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = load i8** %p, align 8
  %9 = load i8** %1, align 8
  %10 = load i64* %2, align 8
  %11 = add i64 %10, 1
  call void @mg_strlcpy(i8* %8, i8* %9, i64 %11)
  br label %12

; <label>:12                                      ; preds = %7, %0
  %13 = load i8** %p, align 8
  ret i8* %13
}

define internal void @reset_per_request_attributes(%struct.mg_connection* %conn) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  %2 = load %struct.mg_connection** %1, align 8
  %3 = getelementptr inbounds %struct.mg_connection* %2, i32 0, i32 10
  store i8* null, i8** %3, align 8
  %4 = load %struct.mg_connection** %1, align 8
  %5 = getelementptr inbounds %struct.mg_connection* %4, i32 0, i32 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.mg_connection** %1, align 8
  %7 = getelementptr inbounds %struct.mg_connection* %6, i32 0, i32 6
  store i64 0, i64* %7, align 8
  %8 = load %struct.mg_connection** %1, align 8
  %9 = getelementptr inbounds %struct.mg_connection* %8, i32 0, i32 15
  store i32 -1, i32* %9, align 4
  %10 = load %struct.mg_connection** %1, align 8
  %11 = getelementptr inbounds %struct.mg_connection* %10, i32 0, i32 16
  store i32 0, i32* %11, align 4
  %12 = load %struct.mg_connection** %1, align 8
  %13 = getelementptr inbounds %struct.mg_connection* %12, i32 0, i32 13
  store i32 0, i32* %13, align 4
  %14 = load %struct.mg_connection** %1, align 8
  %15 = getelementptr inbounds %struct.mg_connection* %14, i32 0, i32 11
  store i32 0, i32* %15, align 4
  ret void
}

define internal i32 @parse_http_message(i8* %buf, i32 %len, %struct.mg_request_info* %ri) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.mg_request_info*, align 8
  %is_request = alloca i32, align 4
  %request_length = alloca i32, align 4
  store i8* %buf, i8** %1, align 8
  store i32 %len, i32* %2, align 4
  store %struct.mg_request_info* %ri, %struct.mg_request_info** %3, align 8
  %4 = load i8** %1, align 8
  %5 = load i32* %2, align 4
  %6 = call i32 @get_request_len(i8* %4, i32 %5)
  store i32 %6, i32* %request_length, align 4
  %7 = load i32* %request_length, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %90

; <label>:9                                       ; preds = %0
  %10 = load %struct.mg_request_info** %3, align 8
  %11 = getelementptr inbounds %struct.mg_request_info* %10, i32 0, i32 2
  store i8* null, i8** %11, align 8
  %12 = load %struct.mg_request_info** %3, align 8
  %13 = getelementptr inbounds %struct.mg_request_info* %12, i32 0, i32 1
  store i8* null, i8** %13, align 8
  %14 = load %struct.mg_request_info** %3, align 8
  %15 = getelementptr inbounds %struct.mg_request_info* %14, i32 0, i32 0
  store i8* null, i8** %15, align 8
  %16 = load %struct.mg_request_info** %3, align 8
  %17 = getelementptr inbounds %struct.mg_request_info* %16, i32 0, i32 4
  store i8* null, i8** %17, align 8
  %18 = load %struct.mg_request_info** %3, align 8
  %19 = getelementptr inbounds %struct.mg_request_info* %18, i32 0, i32 10
  store i32 0, i32* %19, align 4
  %20 = load i32* %request_length, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = load i8** %1, align 8
  %24 = getelementptr inbounds i8* %23, i64 %22
  store i8 0, i8* %24
  br label %25

; <label>:25                                      ; preds = %44, %9
  %26 = load i8** %1, align 8
  %27 = load i8* %26
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

; <label>:30                                      ; preds = %25
  %31 = load i8** %1, align 8
  %32 = load i8* %31
  %33 = zext i8 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = call i16** @__ctype_b_loc() nounwind readnone
  %36 = load i16** %35
  %37 = getelementptr inbounds i16* %36, i64 %34
  %38 = load i16* %37
  %39 = zext i16 %38 to i32
  %40 = and i32 %39, 8192
  %41 = icmp ne i32 %40, 0
  br label %42

; <label>:42                                      ; preds = %30, %25
  %43 = phi i1 [ false, %25 ], [ %41, %30 ]
  br i1 %43, label %44, label %47

; <label>:44                                      ; preds = %42
  %45 = load i8** %1, align 8
  %46 = getelementptr inbounds i8* %45, i32 1
  store i8* %46, i8** %1, align 8
  br label %25

; <label>:47                                      ; preds = %42
  %48 = call i8* @skip(i8** %1, i8* getelementptr inbounds ([2 x i8]* @.str124, i32 0, i32 0))
  %49 = load %struct.mg_request_info** %3, align 8
  %50 = getelementptr inbounds %struct.mg_request_info* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = call i8* @skip(i8** %1, i8* getelementptr inbounds ([2 x i8]* @.str124, i32 0, i32 0))
  %52 = load %struct.mg_request_info** %3, align 8
  %53 = getelementptr inbounds %struct.mg_request_info* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = call i8* @skip(i8** %1, i8* getelementptr inbounds ([3 x i8]* @.str123, i32 0, i32 0))
  %55 = load %struct.mg_request_info** %3, align 8
  %56 = getelementptr inbounds %struct.mg_request_info* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load %struct.mg_request_info** %3, align 8
  %58 = getelementptr inbounds %struct.mg_request_info* %57, i32 0, i32 0
  %59 = load i8** %58, align 8
  %60 = call i32 @is_valid_http_method(i8* %59)
  store i32 %60, i32* %is_request, align 4
  %61 = load i32* %is_request, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

; <label>:63                                      ; preds = %47
  %64 = load %struct.mg_request_info** %3, align 8
  %65 = getelementptr inbounds %struct.mg_request_info* %64, i32 0, i32 2
  %66 = load i8** %65, align 8
  %67 = call i32 @memcmp(i8* %66, i8* getelementptr inbounds ([6 x i8]* @.str281, i32 0, i32 0), i64 5) nounwind readonly
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

; <label>:69                                      ; preds = %63, %47
  %70 = load i32* %is_request, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

; <label>:72                                      ; preds = %69
  %73 = load %struct.mg_request_info** %3, align 8
  %74 = getelementptr inbounds %struct.mg_request_info* %73, i32 0, i32 0
  %75 = load i8** %74, align 8
  %76 = call i32 @memcmp(i8* %75, i8* getelementptr inbounds ([6 x i8]* @.str281, i32 0, i32 0), i64 5) nounwind readonly
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

; <label>:78                                      ; preds = %72, %63
  store i32 -1, i32* %request_length, align 4
  br label %89

; <label>:79                                      ; preds = %72, %69
  %80 = load i32* %is_request, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

; <label>:82                                      ; preds = %79
  %83 = load %struct.mg_request_info** %3, align 8
  %84 = getelementptr inbounds %struct.mg_request_info* %83, i32 0, i32 2
  %85 = load i8** %84, align 8
  %86 = getelementptr inbounds i8* %85, i64 5
  store i8* %86, i8** %84, align 8
  br label %87

; <label>:87                                      ; preds = %82, %79
  %88 = load %struct.mg_request_info** %3, align 8
  call void @parse_http_headers(i8** %1, %struct.mg_request_info* %88)
  br label %89

; <label>:89                                      ; preds = %87, %78
  br label %90

; <label>:90                                      ; preds = %89, %0
  %91 = load i32* %request_length, align 4
  ret i32 %91
}

declare i64 @strtoll(i8*, i8**, i32) nounwind

define internal i32 @is_valid_http_method(i8* %method) nounwind uwtable {
  %1 = alloca i8*, align 8
  store i8* %method, i8** %1, align 8
  %2 = load i8** %1, align 8
  %3 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str70, i32 0, i32 0)) nounwind readonly
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %38

; <label>:5                                       ; preds = %0
  %6 = load i8** %1, align 8
  %7 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([5 x i8]* @.str68, i32 0, i32 0)) nounwind readonly
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %38

; <label>:9                                       ; preds = %5
  %10 = load i8** %1, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([5 x i8]* @.str69, i32 0, i32 0)) nounwind readonly
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %38

; <label>:13                                      ; preds = %9
  %14 = load i8** %1, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([8 x i8]* @.str282, i32 0, i32 0)) nounwind readonly
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %38

; <label>:17                                      ; preds = %13
  %18 = load i8** %1, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([4 x i8]* @.str58, i32 0, i32 0)) nounwind readonly
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

; <label>:21                                      ; preds = %17
  %22 = load i8** %1, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([7 x i8]* @.str60, i32 0, i32 0)) nounwind readonly
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

; <label>:25                                      ; preds = %21
  %26 = load i8** %1, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([8 x i8]* @.str57, i32 0, i32 0)) nounwind readonly
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

; <label>:29                                      ; preds = %25
  %30 = load i8** %1, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([9 x i8]* @.str65, i32 0, i32 0)) nounwind readonly
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

; <label>:33                                      ; preds = %29
  %34 = load i8** %1, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([6 x i8]* @.str59, i32 0, i32 0)) nounwind readonly
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

; <label>:38                                      ; preds = %33, %29, %25, %21, %17, %13, %9, %5, %0
  %39 = phi i1 [ true, %29 ], [ true, %25 ], [ true, %21 ], [ true, %17 ], [ true, %13 ], [ true, %9 ], [ true, %5 ], [ true, %0 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  ret i32 %40
}

declare %struct.hostent* @gethostbyname(i8*)

declare i32 @connect(i32, %struct.sockaddr*, i32)

define internal void @close_socket_gracefully(%struct.mg_connection* %conn) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  %linger = alloca %struct.linger, align 4
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  %2 = getelementptr inbounds %struct.linger* %linger, i32 0, i32 0
  store i32 1, i32* %2, align 4
  %3 = getelementptr inbounds %struct.linger* %linger, i32 0, i32 1
  store i32 1, i32* %3, align 4
  %4 = load %struct.mg_connection** %1, align 8
  %5 = getelementptr inbounds %struct.mg_connection* %4, i32 0, i32 4
  %6 = getelementptr inbounds %struct.socket* %5, i32 0, i32 0
  %7 = load i32* %6, align 4
  %8 = bitcast %struct.linger* %linger to i8*
  %9 = call i32 @setsockopt(i32 %7, i32 1, i32 13, i8* %8, i32 8) nounwind
  %10 = load %struct.mg_connection** %1, align 8
  %11 = getelementptr inbounds %struct.mg_connection* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.socket* %11, i32 0, i32 0
  %13 = load i32* %12, align 4
  %14 = call i32 @shutdown(i32 %13, i32 1) nounwind
  %15 = load %struct.mg_connection** %1, align 8
  %16 = getelementptr inbounds %struct.mg_connection* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.socket* %16, i32 0, i32 0
  %18 = load i32* %17, align 4
  %19 = call i32 @set_non_blocking_mode(i32 %18)
  %20 = load %struct.mg_connection** %1, align 8
  %21 = getelementptr inbounds %struct.mg_connection* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.socket* %21, i32 0, i32 0
  %23 = load i32* %22, align 4
  %24 = call i32 @close(i32 %23)
  ret void
}

declare i32 @shutdown(i32, i32) nounwind

define internal i32 @set_non_blocking_mode(i32 %sock) nounwind uwtable {
  %1 = alloca i32, align 4
  %flags = alloca i32, align 4
  store i32 %sock, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = call i32 (i32, i32, ...)* @fcntl(i32 %2, i32 3, i32 0)
  store i32 %3, i32* %flags, align 4
  %4 = load i32* %1, align 4
  %5 = load i32* %flags, align 4
  %6 = or i32 %5, 2048
  %7 = call i32 (i32, i32, ...)* @fcntl(i32 %4, i32 4, i32 %6)
  ret i32 0
}

define internal i8* @suggest_connection_header(%struct.mg_connection* %conn) nounwind uwtable {
  %1 = alloca %struct.mg_connection*, align 8
  store %struct.mg_connection* %conn, %struct.mg_connection** %1, align 8
  %2 = load %struct.mg_connection** %1, align 8
  %3 = call i32 @should_keep_alive(%struct.mg_connection* %2)
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %4, i8* getelementptr inbounds ([11 x i8]* @.str49, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str311, i32 0, i32 0)
  ret i8* %5
}

declare i32 @stat(i8*, %struct.stat*) nounwind

define internal void @byteReverse(i8* %buf, i32 %longs) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %t = alloca i32, align 4
  store i8* %buf, i8** %1, align 8
  store i32 %longs, i32* %2, align 4
  %3 = call i32 @is_big_endian()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %39

; <label>:5                                       ; preds = %0
  br label %6

; <label>:6                                       ; preds = %34, %5
  %7 = load i8** %1, align 8
  %8 = getelementptr inbounds i8* %7, i64 3
  %9 = load i8* %8
  %10 = zext i8 %9 to i32
  %11 = shl i32 %10, 8
  %12 = load i8** %1, align 8
  %13 = getelementptr inbounds i8* %12, i64 2
  %14 = load i8* %13
  %15 = zext i8 %14 to i32
  %16 = or i32 %11, %15
  %17 = shl i32 %16, 16
  %18 = load i8** %1, align 8
  %19 = getelementptr inbounds i8* %18, i64 1
  %20 = load i8* %19
  %21 = zext i8 %20 to i32
  %22 = shl i32 %21, 8
  %23 = load i8** %1, align 8
  %24 = getelementptr inbounds i8* %23, i64 0
  %25 = load i8* %24
  %26 = zext i8 %25 to i32
  %27 = or i32 %22, %26
  %28 = or i32 %17, %27
  store i32 %28, i32* %t, align 4
  %29 = load i32* %t, align 4
  %30 = load i8** %1, align 8
  %31 = bitcast i8* %30 to i32*
  store i32 %29, i32* %31
  %32 = load i8** %1, align 8
  %33 = getelementptr inbounds i8* %32, i64 4
  store i8* %33, i8** %1, align 8
  br label %34

; <label>:34                                      ; preds = %6
  %35 = load i32* %2, align 4
  %36 = add i32 %35, -1
  store i32 %36, i32* %2, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %6, label %38

; <label>:38                                      ; preds = %34
  br label %39

; <label>:39                                      ; preds = %38, %0
  ret void
}

define internal void @MD5Transform(i32* %buf, i32* %in) nounwind uwtable {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store i32* %buf, i32** %1, align 8
  store i32* %in, i32** %2, align 8
  %3 = load i32** %1, align 8
  %4 = getelementptr inbounds i32* %3, i64 0
  %5 = load i32* %4
  store i32 %5, i32* %a, align 4
  %6 = load i32** %1, align 8
  %7 = getelementptr inbounds i32* %6, i64 1
  %8 = load i32* %7
  store i32 %8, i32* %b, align 4
  %9 = load i32** %1, align 8
  %10 = getelementptr inbounds i32* %9, i64 2
  %11 = load i32* %10
  store i32 %11, i32* %c, align 4
  %12 = load i32** %1, align 8
  %13 = getelementptr inbounds i32* %12, i64 3
  %14 = load i32* %13
  store i32 %14, i32* %d, align 4
  %15 = load i32* %d, align 4
  %16 = load i32* %b, align 4
  %17 = load i32* %c, align 4
  %18 = load i32* %d, align 4
  %19 = xor i32 %17, %18
  %20 = and i32 %16, %19
  %21 = xor i32 %15, %20
  %22 = load i32** %2, align 8
  %23 = getelementptr inbounds i32* %22, i64 0
  %24 = load i32* %23
  %25 = add i32 %21, %24
  %26 = add i32 %25, -680876936
  %27 = load i32* %a, align 4
  %28 = add i32 %27, %26
  store i32 %28, i32* %a, align 4
  %29 = load i32* %a, align 4
  %30 = shl i32 %29, 7
  %31 = load i32* %a, align 4
  %32 = lshr i32 %31, 25
  %33 = or i32 %30, %32
  store i32 %33, i32* %a, align 4
  %34 = load i32* %b, align 4
  %35 = load i32* %a, align 4
  %36 = add i32 %35, %34
  store i32 %36, i32* %a, align 4
  %37 = load i32* %c, align 4
  %38 = load i32* %a, align 4
  %39 = load i32* %b, align 4
  %40 = load i32* %c, align 4
  %41 = xor i32 %39, %40
  %42 = and i32 %38, %41
  %43 = xor i32 %37, %42
  %44 = load i32** %2, align 8
  %45 = getelementptr inbounds i32* %44, i64 1
  %46 = load i32* %45
  %47 = add i32 %43, %46
  %48 = add i32 %47, -389564586
  %49 = load i32* %d, align 4
  %50 = add i32 %49, %48
  store i32 %50, i32* %d, align 4
  %51 = load i32* %d, align 4
  %52 = shl i32 %51, 12
  %53 = load i32* %d, align 4
  %54 = lshr i32 %53, 20
  %55 = or i32 %52, %54
  store i32 %55, i32* %d, align 4
  %56 = load i32* %a, align 4
  %57 = load i32* %d, align 4
  %58 = add i32 %57, %56
  store i32 %58, i32* %d, align 4
  %59 = load i32* %b, align 4
  %60 = load i32* %d, align 4
  %61 = load i32* %a, align 4
  %62 = load i32* %b, align 4
  %63 = xor i32 %61, %62
  %64 = and i32 %60, %63
  %65 = xor i32 %59, %64
  %66 = load i32** %2, align 8
  %67 = getelementptr inbounds i32* %66, i64 2
  %68 = load i32* %67
  %69 = add i32 %65, %68
  %70 = add i32 %69, 606105819
  %71 = load i32* %c, align 4
  %72 = add i32 %71, %70
  store i32 %72, i32* %c, align 4
  %73 = load i32* %c, align 4
  %74 = shl i32 %73, 17
  %75 = load i32* %c, align 4
  %76 = lshr i32 %75, 15
  %77 = or i32 %74, %76
  store i32 %77, i32* %c, align 4
  %78 = load i32* %d, align 4
  %79 = load i32* %c, align 4
  %80 = add i32 %79, %78
  store i32 %80, i32* %c, align 4
  %81 = load i32* %a, align 4
  %82 = load i32* %c, align 4
  %83 = load i32* %d, align 4
  %84 = load i32* %a, align 4
  %85 = xor i32 %83, %84
  %86 = and i32 %82, %85
  %87 = xor i32 %81, %86
  %88 = load i32** %2, align 8
  %89 = getelementptr inbounds i32* %88, i64 3
  %90 = load i32* %89
  %91 = add i32 %87, %90
  %92 = add i32 %91, -1044525330
  %93 = load i32* %b, align 4
  %94 = add i32 %93, %92
  store i32 %94, i32* %b, align 4
  %95 = load i32* %b, align 4
  %96 = shl i32 %95, 22
  %97 = load i32* %b, align 4
  %98 = lshr i32 %97, 10
  %99 = or i32 %96, %98
  store i32 %99, i32* %b, align 4
  %100 = load i32* %c, align 4
  %101 = load i32* %b, align 4
  %102 = add i32 %101, %100
  store i32 %102, i32* %b, align 4
  %103 = load i32* %d, align 4
  %104 = load i32* %b, align 4
  %105 = load i32* %c, align 4
  %106 = load i32* %d, align 4
  %107 = xor i32 %105, %106
  %108 = and i32 %104, %107
  %109 = xor i32 %103, %108
  %110 = load i32** %2, align 8
  %111 = getelementptr inbounds i32* %110, i64 4
  %112 = load i32* %111
  %113 = add i32 %109, %112
  %114 = add i32 %113, -176418897
  %115 = load i32* %a, align 4
  %116 = add i32 %115, %114
  store i32 %116, i32* %a, align 4
  %117 = load i32* %a, align 4
  %118 = shl i32 %117, 7
  %119 = load i32* %a, align 4
  %120 = lshr i32 %119, 25
  %121 = or i32 %118, %120
  store i32 %121, i32* %a, align 4
  %122 = load i32* %b, align 4
  %123 = load i32* %a, align 4
  %124 = add i32 %123, %122
  store i32 %124, i32* %a, align 4
  %125 = load i32* %c, align 4
  %126 = load i32* %a, align 4
  %127 = load i32* %b, align 4
  %128 = load i32* %c, align 4
  %129 = xor i32 %127, %128
  %130 = and i32 %126, %129
  %131 = xor i32 %125, %130
  %132 = load i32** %2, align 8
  %133 = getelementptr inbounds i32* %132, i64 5
  %134 = load i32* %133
  %135 = add i32 %131, %134
  %136 = add i32 %135, 1200080426
  %137 = load i32* %d, align 4
  %138 = add i32 %137, %136
  store i32 %138, i32* %d, align 4
  %139 = load i32* %d, align 4
  %140 = shl i32 %139, 12
  %141 = load i32* %d, align 4
  %142 = lshr i32 %141, 20
  %143 = or i32 %140, %142
  store i32 %143, i32* %d, align 4
  %144 = load i32* %a, align 4
  %145 = load i32* %d, align 4
  %146 = add i32 %145, %144
  store i32 %146, i32* %d, align 4
  %147 = load i32* %b, align 4
  %148 = load i32* %d, align 4
  %149 = load i32* %a, align 4
  %150 = load i32* %b, align 4
  %151 = xor i32 %149, %150
  %152 = and i32 %148, %151
  %153 = xor i32 %147, %152
  %154 = load i32** %2, align 8
  %155 = getelementptr inbounds i32* %154, i64 6
  %156 = load i32* %155
  %157 = add i32 %153, %156
  %158 = add i32 %157, -1473231341
  %159 = load i32* %c, align 4
  %160 = add i32 %159, %158
  store i32 %160, i32* %c, align 4
  %161 = load i32* %c, align 4
  %162 = shl i32 %161, 17
  %163 = load i32* %c, align 4
  %164 = lshr i32 %163, 15
  %165 = or i32 %162, %164
  store i32 %165, i32* %c, align 4
  %166 = load i32* %d, align 4
  %167 = load i32* %c, align 4
  %168 = add i32 %167, %166
  store i32 %168, i32* %c, align 4
  %169 = load i32* %a, align 4
  %170 = load i32* %c, align 4
  %171 = load i32* %d, align 4
  %172 = load i32* %a, align 4
  %173 = xor i32 %171, %172
  %174 = and i32 %170, %173
  %175 = xor i32 %169, %174
  %176 = load i32** %2, align 8
  %177 = getelementptr inbounds i32* %176, i64 7
  %178 = load i32* %177
  %179 = add i32 %175, %178
  %180 = add i32 %179, -45705983
  %181 = load i32* %b, align 4
  %182 = add i32 %181, %180
  store i32 %182, i32* %b, align 4
  %183 = load i32* %b, align 4
  %184 = shl i32 %183, 22
  %185 = load i32* %b, align 4
  %186 = lshr i32 %185, 10
  %187 = or i32 %184, %186
  store i32 %187, i32* %b, align 4
  %188 = load i32* %c, align 4
  %189 = load i32* %b, align 4
  %190 = add i32 %189, %188
  store i32 %190, i32* %b, align 4
  %191 = load i32* %d, align 4
  %192 = load i32* %b, align 4
  %193 = load i32* %c, align 4
  %194 = load i32* %d, align 4
  %195 = xor i32 %193, %194
  %196 = and i32 %192, %195
  %197 = xor i32 %191, %196
  %198 = load i32** %2, align 8
  %199 = getelementptr inbounds i32* %198, i64 8
  %200 = load i32* %199
  %201 = add i32 %197, %200
  %202 = add i32 %201, 1770035416
  %203 = load i32* %a, align 4
  %204 = add i32 %203, %202
  store i32 %204, i32* %a, align 4
  %205 = load i32* %a, align 4
  %206 = shl i32 %205, 7
  %207 = load i32* %a, align 4
  %208 = lshr i32 %207, 25
  %209 = or i32 %206, %208
  store i32 %209, i32* %a, align 4
  %210 = load i32* %b, align 4
  %211 = load i32* %a, align 4
  %212 = add i32 %211, %210
  store i32 %212, i32* %a, align 4
  %213 = load i32* %c, align 4
  %214 = load i32* %a, align 4
  %215 = load i32* %b, align 4
  %216 = load i32* %c, align 4
  %217 = xor i32 %215, %216
  %218 = and i32 %214, %217
  %219 = xor i32 %213, %218
  %220 = load i32** %2, align 8
  %221 = getelementptr inbounds i32* %220, i64 9
  %222 = load i32* %221
  %223 = add i32 %219, %222
  %224 = add i32 %223, -1958414417
  %225 = load i32* %d, align 4
  %226 = add i32 %225, %224
  store i32 %226, i32* %d, align 4
  %227 = load i32* %d, align 4
  %228 = shl i32 %227, 12
  %229 = load i32* %d, align 4
  %230 = lshr i32 %229, 20
  %231 = or i32 %228, %230
  store i32 %231, i32* %d, align 4
  %232 = load i32* %a, align 4
  %233 = load i32* %d, align 4
  %234 = add i32 %233, %232
  store i32 %234, i32* %d, align 4
  %235 = load i32* %b, align 4
  %236 = load i32* %d, align 4
  %237 = load i32* %a, align 4
  %238 = load i32* %b, align 4
  %239 = xor i32 %237, %238
  %240 = and i32 %236, %239
  %241 = xor i32 %235, %240
  %242 = load i32** %2, align 8
  %243 = getelementptr inbounds i32* %242, i64 10
  %244 = load i32* %243
  %245 = add i32 %241, %244
  %246 = add i32 %245, -42063
  %247 = load i32* %c, align 4
  %248 = add i32 %247, %246
  store i32 %248, i32* %c, align 4
  %249 = load i32* %c, align 4
  %250 = shl i32 %249, 17
  %251 = load i32* %c, align 4
  %252 = lshr i32 %251, 15
  %253 = or i32 %250, %252
  store i32 %253, i32* %c, align 4
  %254 = load i32* %d, align 4
  %255 = load i32* %c, align 4
  %256 = add i32 %255, %254
  store i32 %256, i32* %c, align 4
  %257 = load i32* %a, align 4
  %258 = load i32* %c, align 4
  %259 = load i32* %d, align 4
  %260 = load i32* %a, align 4
  %261 = xor i32 %259, %260
  %262 = and i32 %258, %261
  %263 = xor i32 %257, %262
  %264 = load i32** %2, align 8
  %265 = getelementptr inbounds i32* %264, i64 11
  %266 = load i32* %265
  %267 = add i32 %263, %266
  %268 = add i32 %267, -1990404162
  %269 = load i32* %b, align 4
  %270 = add i32 %269, %268
  store i32 %270, i32* %b, align 4
  %271 = load i32* %b, align 4
  %272 = shl i32 %271, 22
  %273 = load i32* %b, align 4
  %274 = lshr i32 %273, 10
  %275 = or i32 %272, %274
  store i32 %275, i32* %b, align 4
  %276 = load i32* %c, align 4
  %277 = load i32* %b, align 4
  %278 = add i32 %277, %276
  store i32 %278, i32* %b, align 4
  %279 = load i32* %d, align 4
  %280 = load i32* %b, align 4
  %281 = load i32* %c, align 4
  %282 = load i32* %d, align 4
  %283 = xor i32 %281, %282
  %284 = and i32 %280, %283
  %285 = xor i32 %279, %284
  %286 = load i32** %2, align 8
  %287 = getelementptr inbounds i32* %286, i64 12
  %288 = load i32* %287
  %289 = add i32 %285, %288
  %290 = add i32 %289, 1804603682
  %291 = load i32* %a, align 4
  %292 = add i32 %291, %290
  store i32 %292, i32* %a, align 4
  %293 = load i32* %a, align 4
  %294 = shl i32 %293, 7
  %295 = load i32* %a, align 4
  %296 = lshr i32 %295, 25
  %297 = or i32 %294, %296
  store i32 %297, i32* %a, align 4
  %298 = load i32* %b, align 4
  %299 = load i32* %a, align 4
  %300 = add i32 %299, %298
  store i32 %300, i32* %a, align 4
  %301 = load i32* %c, align 4
  %302 = load i32* %a, align 4
  %303 = load i32* %b, align 4
  %304 = load i32* %c, align 4
  %305 = xor i32 %303, %304
  %306 = and i32 %302, %305
  %307 = xor i32 %301, %306
  %308 = load i32** %2, align 8
  %309 = getelementptr inbounds i32* %308, i64 13
  %310 = load i32* %309
  %311 = add i32 %307, %310
  %312 = add i32 %311, -40341101
  %313 = load i32* %d, align 4
  %314 = add i32 %313, %312
  store i32 %314, i32* %d, align 4
  %315 = load i32* %d, align 4
  %316 = shl i32 %315, 12
  %317 = load i32* %d, align 4
  %318 = lshr i32 %317, 20
  %319 = or i32 %316, %318
  store i32 %319, i32* %d, align 4
  %320 = load i32* %a, align 4
  %321 = load i32* %d, align 4
  %322 = add i32 %321, %320
  store i32 %322, i32* %d, align 4
  %323 = load i32* %b, align 4
  %324 = load i32* %d, align 4
  %325 = load i32* %a, align 4
  %326 = load i32* %b, align 4
  %327 = xor i32 %325, %326
  %328 = and i32 %324, %327
  %329 = xor i32 %323, %328
  %330 = load i32** %2, align 8
  %331 = getelementptr inbounds i32* %330, i64 14
  %332 = load i32* %331
  %333 = add i32 %329, %332
  %334 = add i32 %333, -1502002290
  %335 = load i32* %c, align 4
  %336 = add i32 %335, %334
  store i32 %336, i32* %c, align 4
  %337 = load i32* %c, align 4
  %338 = shl i32 %337, 17
  %339 = load i32* %c, align 4
  %340 = lshr i32 %339, 15
  %341 = or i32 %338, %340
  store i32 %341, i32* %c, align 4
  %342 = load i32* %d, align 4
  %343 = load i32* %c, align 4
  %344 = add i32 %343, %342
  store i32 %344, i32* %c, align 4
  %345 = load i32* %a, align 4
  %346 = load i32* %c, align 4
  %347 = load i32* %d, align 4
  %348 = load i32* %a, align 4
  %349 = xor i32 %347, %348
  %350 = and i32 %346, %349
  %351 = xor i32 %345, %350
  %352 = load i32** %2, align 8
  %353 = getelementptr inbounds i32* %352, i64 15
  %354 = load i32* %353
  %355 = add i32 %351, %354
  %356 = add i32 %355, 1236535329
  %357 = load i32* %b, align 4
  %358 = add i32 %357, %356
  store i32 %358, i32* %b, align 4
  %359 = load i32* %b, align 4
  %360 = shl i32 %359, 22
  %361 = load i32* %b, align 4
  %362 = lshr i32 %361, 10
  %363 = or i32 %360, %362
  store i32 %363, i32* %b, align 4
  %364 = load i32* %c, align 4
  %365 = load i32* %b, align 4
  %366 = add i32 %365, %364
  store i32 %366, i32* %b, align 4
  %367 = load i32* %c, align 4
  %368 = load i32* %d, align 4
  %369 = load i32* %b, align 4
  %370 = load i32* %c, align 4
  %371 = xor i32 %369, %370
  %372 = and i32 %368, %371
  %373 = xor i32 %367, %372
  %374 = load i32** %2, align 8
  %375 = getelementptr inbounds i32* %374, i64 1
  %376 = load i32* %375
  %377 = add i32 %373, %376
  %378 = add i32 %377, -165796510
  %379 = load i32* %a, align 4
  %380 = add i32 %379, %378
  store i32 %380, i32* %a, align 4
  %381 = load i32* %a, align 4
  %382 = shl i32 %381, 5
  %383 = load i32* %a, align 4
  %384 = lshr i32 %383, 27
  %385 = or i32 %382, %384
  store i32 %385, i32* %a, align 4
  %386 = load i32* %b, align 4
  %387 = load i32* %a, align 4
  %388 = add i32 %387, %386
  store i32 %388, i32* %a, align 4
  %389 = load i32* %b, align 4
  %390 = load i32* %c, align 4
  %391 = load i32* %a, align 4
  %392 = load i32* %b, align 4
  %393 = xor i32 %391, %392
  %394 = and i32 %390, %393
  %395 = xor i32 %389, %394
  %396 = load i32** %2, align 8
  %397 = getelementptr inbounds i32* %396, i64 6
  %398 = load i32* %397
  %399 = add i32 %395, %398
  %400 = add i32 %399, -1069501632
  %401 = load i32* %d, align 4
  %402 = add i32 %401, %400
  store i32 %402, i32* %d, align 4
  %403 = load i32* %d, align 4
  %404 = shl i32 %403, 9
  %405 = load i32* %d, align 4
  %406 = lshr i32 %405, 23
  %407 = or i32 %404, %406
  store i32 %407, i32* %d, align 4
  %408 = load i32* %a, align 4
  %409 = load i32* %d, align 4
  %410 = add i32 %409, %408
  store i32 %410, i32* %d, align 4
  %411 = load i32* %a, align 4
  %412 = load i32* %b, align 4
  %413 = load i32* %d, align 4
  %414 = load i32* %a, align 4
  %415 = xor i32 %413, %414
  %416 = and i32 %412, %415
  %417 = xor i32 %411, %416
  %418 = load i32** %2, align 8
  %419 = getelementptr inbounds i32* %418, i64 11
  %420 = load i32* %419
  %421 = add i32 %417, %420
  %422 = add i32 %421, 643717713
  %423 = load i32* %c, align 4
  %424 = add i32 %423, %422
  store i32 %424, i32* %c, align 4
  %425 = load i32* %c, align 4
  %426 = shl i32 %425, 14
  %427 = load i32* %c, align 4
  %428 = lshr i32 %427, 18
  %429 = or i32 %426, %428
  store i32 %429, i32* %c, align 4
  %430 = load i32* %d, align 4
  %431 = load i32* %c, align 4
  %432 = add i32 %431, %430
  store i32 %432, i32* %c, align 4
  %433 = load i32* %d, align 4
  %434 = load i32* %a, align 4
  %435 = load i32* %c, align 4
  %436 = load i32* %d, align 4
  %437 = xor i32 %435, %436
  %438 = and i32 %434, %437
  %439 = xor i32 %433, %438
  %440 = load i32** %2, align 8
  %441 = getelementptr inbounds i32* %440, i64 0
  %442 = load i32* %441
  %443 = add i32 %439, %442
  %444 = add i32 %443, -373897302
  %445 = load i32* %b, align 4
  %446 = add i32 %445, %444
  store i32 %446, i32* %b, align 4
  %447 = load i32* %b, align 4
  %448 = shl i32 %447, 20
  %449 = load i32* %b, align 4
  %450 = lshr i32 %449, 12
  %451 = or i32 %448, %450
  store i32 %451, i32* %b, align 4
  %452 = load i32* %c, align 4
  %453 = load i32* %b, align 4
  %454 = add i32 %453, %452
  store i32 %454, i32* %b, align 4
  %455 = load i32* %c, align 4
  %456 = load i32* %d, align 4
  %457 = load i32* %b, align 4
  %458 = load i32* %c, align 4
  %459 = xor i32 %457, %458
  %460 = and i32 %456, %459
  %461 = xor i32 %455, %460
  %462 = load i32** %2, align 8
  %463 = getelementptr inbounds i32* %462, i64 5
  %464 = load i32* %463
  %465 = add i32 %461, %464
  %466 = add i32 %465, -701558691
  %467 = load i32* %a, align 4
  %468 = add i32 %467, %466
  store i32 %468, i32* %a, align 4
  %469 = load i32* %a, align 4
  %470 = shl i32 %469, 5
  %471 = load i32* %a, align 4
  %472 = lshr i32 %471, 27
  %473 = or i32 %470, %472
  store i32 %473, i32* %a, align 4
  %474 = load i32* %b, align 4
  %475 = load i32* %a, align 4
  %476 = add i32 %475, %474
  store i32 %476, i32* %a, align 4
  %477 = load i32* %b, align 4
  %478 = load i32* %c, align 4
  %479 = load i32* %a, align 4
  %480 = load i32* %b, align 4
  %481 = xor i32 %479, %480
  %482 = and i32 %478, %481
  %483 = xor i32 %477, %482
  %484 = load i32** %2, align 8
  %485 = getelementptr inbounds i32* %484, i64 10
  %486 = load i32* %485
  %487 = add i32 %483, %486
  %488 = add i32 %487, 38016083
  %489 = load i32* %d, align 4
  %490 = add i32 %489, %488
  store i32 %490, i32* %d, align 4
  %491 = load i32* %d, align 4
  %492 = shl i32 %491, 9
  %493 = load i32* %d, align 4
  %494 = lshr i32 %493, 23
  %495 = or i32 %492, %494
  store i32 %495, i32* %d, align 4
  %496 = load i32* %a, align 4
  %497 = load i32* %d, align 4
  %498 = add i32 %497, %496
  store i32 %498, i32* %d, align 4
  %499 = load i32* %a, align 4
  %500 = load i32* %b, align 4
  %501 = load i32* %d, align 4
  %502 = load i32* %a, align 4
  %503 = xor i32 %501, %502
  %504 = and i32 %500, %503
  %505 = xor i32 %499, %504
  %506 = load i32** %2, align 8
  %507 = getelementptr inbounds i32* %506, i64 15
  %508 = load i32* %507
  %509 = add i32 %505, %508
  %510 = add i32 %509, -660478335
  %511 = load i32* %c, align 4
  %512 = add i32 %511, %510
  store i32 %512, i32* %c, align 4
  %513 = load i32* %c, align 4
  %514 = shl i32 %513, 14
  %515 = load i32* %c, align 4
  %516 = lshr i32 %515, 18
  %517 = or i32 %514, %516
  store i32 %517, i32* %c, align 4
  %518 = load i32* %d, align 4
  %519 = load i32* %c, align 4
  %520 = add i32 %519, %518
  store i32 %520, i32* %c, align 4
  %521 = load i32* %d, align 4
  %522 = load i32* %a, align 4
  %523 = load i32* %c, align 4
  %524 = load i32* %d, align 4
  %525 = xor i32 %523, %524
  %526 = and i32 %522, %525
  %527 = xor i32 %521, %526
  %528 = load i32** %2, align 8
  %529 = getelementptr inbounds i32* %528, i64 4
  %530 = load i32* %529
  %531 = add i32 %527, %530
  %532 = add i32 %531, -405537848
  %533 = load i32* %b, align 4
  %534 = add i32 %533, %532
  store i32 %534, i32* %b, align 4
  %535 = load i32* %b, align 4
  %536 = shl i32 %535, 20
  %537 = load i32* %b, align 4
  %538 = lshr i32 %537, 12
  %539 = or i32 %536, %538
  store i32 %539, i32* %b, align 4
  %540 = load i32* %c, align 4
  %541 = load i32* %b, align 4
  %542 = add i32 %541, %540
  store i32 %542, i32* %b, align 4
  %543 = load i32* %c, align 4
  %544 = load i32* %d, align 4
  %545 = load i32* %b, align 4
  %546 = load i32* %c, align 4
  %547 = xor i32 %545, %546
  %548 = and i32 %544, %547
  %549 = xor i32 %543, %548
  %550 = load i32** %2, align 8
  %551 = getelementptr inbounds i32* %550, i64 9
  %552 = load i32* %551
  %553 = add i32 %549, %552
  %554 = add i32 %553, 568446438
  %555 = load i32* %a, align 4
  %556 = add i32 %555, %554
  store i32 %556, i32* %a, align 4
  %557 = load i32* %a, align 4
  %558 = shl i32 %557, 5
  %559 = load i32* %a, align 4
  %560 = lshr i32 %559, 27
  %561 = or i32 %558, %560
  store i32 %561, i32* %a, align 4
  %562 = load i32* %b, align 4
  %563 = load i32* %a, align 4
  %564 = add i32 %563, %562
  store i32 %564, i32* %a, align 4
  %565 = load i32* %b, align 4
  %566 = load i32* %c, align 4
  %567 = load i32* %a, align 4
  %568 = load i32* %b, align 4
  %569 = xor i32 %567, %568
  %570 = and i32 %566, %569
  %571 = xor i32 %565, %570
  %572 = load i32** %2, align 8
  %573 = getelementptr inbounds i32* %572, i64 14
  %574 = load i32* %573
  %575 = add i32 %571, %574
  %576 = add i32 %575, -1019803690
  %577 = load i32* %d, align 4
  %578 = add i32 %577, %576
  store i32 %578, i32* %d, align 4
  %579 = load i32* %d, align 4
  %580 = shl i32 %579, 9
  %581 = load i32* %d, align 4
  %582 = lshr i32 %581, 23
  %583 = or i32 %580, %582
  store i32 %583, i32* %d, align 4
  %584 = load i32* %a, align 4
  %585 = load i32* %d, align 4
  %586 = add i32 %585, %584
  store i32 %586, i32* %d, align 4
  %587 = load i32* %a, align 4
  %588 = load i32* %b, align 4
  %589 = load i32* %d, align 4
  %590 = load i32* %a, align 4
  %591 = xor i32 %589, %590
  %592 = and i32 %588, %591
  %593 = xor i32 %587, %592
  %594 = load i32** %2, align 8
  %595 = getelementptr inbounds i32* %594, i64 3
  %596 = load i32* %595
  %597 = add i32 %593, %596
  %598 = add i32 %597, -187363961
  %599 = load i32* %c, align 4
  %600 = add i32 %599, %598
  store i32 %600, i32* %c, align 4
  %601 = load i32* %c, align 4
  %602 = shl i32 %601, 14
  %603 = load i32* %c, align 4
  %604 = lshr i32 %603, 18
  %605 = or i32 %602, %604
  store i32 %605, i32* %c, align 4
  %606 = load i32* %d, align 4
  %607 = load i32* %c, align 4
  %608 = add i32 %607, %606
  store i32 %608, i32* %c, align 4
  %609 = load i32* %d, align 4
  %610 = load i32* %a, align 4
  %611 = load i32* %c, align 4
  %612 = load i32* %d, align 4
  %613 = xor i32 %611, %612
  %614 = and i32 %610, %613
  %615 = xor i32 %609, %614
  %616 = load i32** %2, align 8
  %617 = getelementptr inbounds i32* %616, i64 8
  %618 = load i32* %617
  %619 = add i32 %615, %618
  %620 = add i32 %619, 1163531501
  %621 = load i32* %b, align 4
  %622 = add i32 %621, %620
  store i32 %622, i32* %b, align 4
  %623 = load i32* %b, align 4
  %624 = shl i32 %623, 20
  %625 = load i32* %b, align 4
  %626 = lshr i32 %625, 12
  %627 = or i32 %624, %626
  store i32 %627, i32* %b, align 4
  %628 = load i32* %c, align 4
  %629 = load i32* %b, align 4
  %630 = add i32 %629, %628
  store i32 %630, i32* %b, align 4
  %631 = load i32* %c, align 4
  %632 = load i32* %d, align 4
  %633 = load i32* %b, align 4
  %634 = load i32* %c, align 4
  %635 = xor i32 %633, %634
  %636 = and i32 %632, %635
  %637 = xor i32 %631, %636
  %638 = load i32** %2, align 8
  %639 = getelementptr inbounds i32* %638, i64 13
  %640 = load i32* %639
  %641 = add i32 %637, %640
  %642 = add i32 %641, -1444681467
  %643 = load i32* %a, align 4
  %644 = add i32 %643, %642
  store i32 %644, i32* %a, align 4
  %645 = load i32* %a, align 4
  %646 = shl i32 %645, 5
  %647 = load i32* %a, align 4
  %648 = lshr i32 %647, 27
  %649 = or i32 %646, %648
  store i32 %649, i32* %a, align 4
  %650 = load i32* %b, align 4
  %651 = load i32* %a, align 4
  %652 = add i32 %651, %650
  store i32 %652, i32* %a, align 4
  %653 = load i32* %b, align 4
  %654 = load i32* %c, align 4
  %655 = load i32* %a, align 4
  %656 = load i32* %b, align 4
  %657 = xor i32 %655, %656
  %658 = and i32 %654, %657
  %659 = xor i32 %653, %658
  %660 = load i32** %2, align 8
  %661 = getelementptr inbounds i32* %660, i64 2
  %662 = load i32* %661
  %663 = add i32 %659, %662
  %664 = add i32 %663, -51403784
  %665 = load i32* %d, align 4
  %666 = add i32 %665, %664
  store i32 %666, i32* %d, align 4
  %667 = load i32* %d, align 4
  %668 = shl i32 %667, 9
  %669 = load i32* %d, align 4
  %670 = lshr i32 %669, 23
  %671 = or i32 %668, %670
  store i32 %671, i32* %d, align 4
  %672 = load i32* %a, align 4
  %673 = load i32* %d, align 4
  %674 = add i32 %673, %672
  store i32 %674, i32* %d, align 4
  %675 = load i32* %a, align 4
  %676 = load i32* %b, align 4
  %677 = load i32* %d, align 4
  %678 = load i32* %a, align 4
  %679 = xor i32 %677, %678
  %680 = and i32 %676, %679
  %681 = xor i32 %675, %680
  %682 = load i32** %2, align 8
  %683 = getelementptr inbounds i32* %682, i64 7
  %684 = load i32* %683
  %685 = add i32 %681, %684
  %686 = add i32 %685, 1735328473
  %687 = load i32* %c, align 4
  %688 = add i32 %687, %686
  store i32 %688, i32* %c, align 4
  %689 = load i32* %c, align 4
  %690 = shl i32 %689, 14
  %691 = load i32* %c, align 4
  %692 = lshr i32 %691, 18
  %693 = or i32 %690, %692
  store i32 %693, i32* %c, align 4
  %694 = load i32* %d, align 4
  %695 = load i32* %c, align 4
  %696 = add i32 %695, %694
  store i32 %696, i32* %c, align 4
  %697 = load i32* %d, align 4
  %698 = load i32* %a, align 4
  %699 = load i32* %c, align 4
  %700 = load i32* %d, align 4
  %701 = xor i32 %699, %700
  %702 = and i32 %698, %701
  %703 = xor i32 %697, %702
  %704 = load i32** %2, align 8
  %705 = getelementptr inbounds i32* %704, i64 12
  %706 = load i32* %705
  %707 = add i32 %703, %706
  %708 = add i32 %707, -1926607734
  %709 = load i32* %b, align 4
  %710 = add i32 %709, %708
  store i32 %710, i32* %b, align 4
  %711 = load i32* %b, align 4
  %712 = shl i32 %711, 20
  %713 = load i32* %b, align 4
  %714 = lshr i32 %713, 12
  %715 = or i32 %712, %714
  store i32 %715, i32* %b, align 4
  %716 = load i32* %c, align 4
  %717 = load i32* %b, align 4
  %718 = add i32 %717, %716
  store i32 %718, i32* %b, align 4
  %719 = load i32* %b, align 4
  %720 = load i32* %c, align 4
  %721 = xor i32 %719, %720
  %722 = load i32* %d, align 4
  %723 = xor i32 %721, %722
  %724 = load i32** %2, align 8
  %725 = getelementptr inbounds i32* %724, i64 5
  %726 = load i32* %725
  %727 = add i32 %723, %726
  %728 = add i32 %727, -378558
  %729 = load i32* %a, align 4
  %730 = add i32 %729, %728
  store i32 %730, i32* %a, align 4
  %731 = load i32* %a, align 4
  %732 = shl i32 %731, 4
  %733 = load i32* %a, align 4
  %734 = lshr i32 %733, 28
  %735 = or i32 %732, %734
  store i32 %735, i32* %a, align 4
  %736 = load i32* %b, align 4
  %737 = load i32* %a, align 4
  %738 = add i32 %737, %736
  store i32 %738, i32* %a, align 4
  %739 = load i32* %a, align 4
  %740 = load i32* %b, align 4
  %741 = xor i32 %739, %740
  %742 = load i32* %c, align 4
  %743 = xor i32 %741, %742
  %744 = load i32** %2, align 8
  %745 = getelementptr inbounds i32* %744, i64 8
  %746 = load i32* %745
  %747 = add i32 %743, %746
  %748 = add i32 %747, -2022574463
  %749 = load i32* %d, align 4
  %750 = add i32 %749, %748
  store i32 %750, i32* %d, align 4
  %751 = load i32* %d, align 4
  %752 = shl i32 %751, 11
  %753 = load i32* %d, align 4
  %754 = lshr i32 %753, 21
  %755 = or i32 %752, %754
  store i32 %755, i32* %d, align 4
  %756 = load i32* %a, align 4
  %757 = load i32* %d, align 4
  %758 = add i32 %757, %756
  store i32 %758, i32* %d, align 4
  %759 = load i32* %d, align 4
  %760 = load i32* %a, align 4
  %761 = xor i32 %759, %760
  %762 = load i32* %b, align 4
  %763 = xor i32 %761, %762
  %764 = load i32** %2, align 8
  %765 = getelementptr inbounds i32* %764, i64 11
  %766 = load i32* %765
  %767 = add i32 %763, %766
  %768 = add i32 %767, 1839030562
  %769 = load i32* %c, align 4
  %770 = add i32 %769, %768
  store i32 %770, i32* %c, align 4
  %771 = load i32* %c, align 4
  %772 = shl i32 %771, 16
  %773 = load i32* %c, align 4
  %774 = lshr i32 %773, 16
  %775 = or i32 %772, %774
  store i32 %775, i32* %c, align 4
  %776 = load i32* %d, align 4
  %777 = load i32* %c, align 4
  %778 = add i32 %777, %776
  store i32 %778, i32* %c, align 4
  %779 = load i32* %c, align 4
  %780 = load i32* %d, align 4
  %781 = xor i32 %779, %780
  %782 = load i32* %a, align 4
  %783 = xor i32 %781, %782
  %784 = load i32** %2, align 8
  %785 = getelementptr inbounds i32* %784, i64 14
  %786 = load i32* %785
  %787 = add i32 %783, %786
  %788 = add i32 %787, -35309556
  %789 = load i32* %b, align 4
  %790 = add i32 %789, %788
  store i32 %790, i32* %b, align 4
  %791 = load i32* %b, align 4
  %792 = shl i32 %791, 23
  %793 = load i32* %b, align 4
  %794 = lshr i32 %793, 9
  %795 = or i32 %792, %794
  store i32 %795, i32* %b, align 4
  %796 = load i32* %c, align 4
  %797 = load i32* %b, align 4
  %798 = add i32 %797, %796
  store i32 %798, i32* %b, align 4
  %799 = load i32* %b, align 4
  %800 = load i32* %c, align 4
  %801 = xor i32 %799, %800
  %802 = load i32* %d, align 4
  %803 = xor i32 %801, %802
  %804 = load i32** %2, align 8
  %805 = getelementptr inbounds i32* %804, i64 1
  %806 = load i32* %805
  %807 = add i32 %803, %806
  %808 = add i32 %807, -1530992060
  %809 = load i32* %a, align 4
  %810 = add i32 %809, %808
  store i32 %810, i32* %a, align 4
  %811 = load i32* %a, align 4
  %812 = shl i32 %811, 4
  %813 = load i32* %a, align 4
  %814 = lshr i32 %813, 28
  %815 = or i32 %812, %814
  store i32 %815, i32* %a, align 4
  %816 = load i32* %b, align 4
  %817 = load i32* %a, align 4
  %818 = add i32 %817, %816
  store i32 %818, i32* %a, align 4
  %819 = load i32* %a, align 4
  %820 = load i32* %b, align 4
  %821 = xor i32 %819, %820
  %822 = load i32* %c, align 4
  %823 = xor i32 %821, %822
  %824 = load i32** %2, align 8
  %825 = getelementptr inbounds i32* %824, i64 4
  %826 = load i32* %825
  %827 = add i32 %823, %826
  %828 = add i32 %827, 1272893353
  %829 = load i32* %d, align 4
  %830 = add i32 %829, %828
  store i32 %830, i32* %d, align 4
  %831 = load i32* %d, align 4
  %832 = shl i32 %831, 11
  %833 = load i32* %d, align 4
  %834 = lshr i32 %833, 21
  %835 = or i32 %832, %834
  store i32 %835, i32* %d, align 4
  %836 = load i32* %a, align 4
  %837 = load i32* %d, align 4
  %838 = add i32 %837, %836
  store i32 %838, i32* %d, align 4
  %839 = load i32* %d, align 4
  %840 = load i32* %a, align 4
  %841 = xor i32 %839, %840
  %842 = load i32* %b, align 4
  %843 = xor i32 %841, %842
  %844 = load i32** %2, align 8
  %845 = getelementptr inbounds i32* %844, i64 7
  %846 = load i32* %845
  %847 = add i32 %843, %846
  %848 = add i32 %847, -155497632
  %849 = load i32* %c, align 4
  %850 = add i32 %849, %848
  store i32 %850, i32* %c, align 4
  %851 = load i32* %c, align 4
  %852 = shl i32 %851, 16
  %853 = load i32* %c, align 4
  %854 = lshr i32 %853, 16
  %855 = or i32 %852, %854
  store i32 %855, i32* %c, align 4
  %856 = load i32* %d, align 4
  %857 = load i32* %c, align 4
  %858 = add i32 %857, %856
  store i32 %858, i32* %c, align 4
  %859 = load i32* %c, align 4
  %860 = load i32* %d, align 4
  %861 = xor i32 %859, %860
  %862 = load i32* %a, align 4
  %863 = xor i32 %861, %862
  %864 = load i32** %2, align 8
  %865 = getelementptr inbounds i32* %864, i64 10
  %866 = load i32* %865
  %867 = add i32 %863, %866
  %868 = add i32 %867, -1094730640
  %869 = load i32* %b, align 4
  %870 = add i32 %869, %868
  store i32 %870, i32* %b, align 4
  %871 = load i32* %b, align 4
  %872 = shl i32 %871, 23
  %873 = load i32* %b, align 4
  %874 = lshr i32 %873, 9
  %875 = or i32 %872, %874
  store i32 %875, i32* %b, align 4
  %876 = load i32* %c, align 4
  %877 = load i32* %b, align 4
  %878 = add i32 %877, %876
  store i32 %878, i32* %b, align 4
  %879 = load i32* %b, align 4
  %880 = load i32* %c, align 4
  %881 = xor i32 %879, %880
  %882 = load i32* %d, align 4
  %883 = xor i32 %881, %882
  %884 = load i32** %2, align 8
  %885 = getelementptr inbounds i32* %884, i64 13
  %886 = load i32* %885
  %887 = add i32 %883, %886
  %888 = add i32 %887, 681279174
  %889 = load i32* %a, align 4
  %890 = add i32 %889, %888
  store i32 %890, i32* %a, align 4
  %891 = load i32* %a, align 4
  %892 = shl i32 %891, 4
  %893 = load i32* %a, align 4
  %894 = lshr i32 %893, 28
  %895 = or i32 %892, %894
  store i32 %895, i32* %a, align 4
  %896 = load i32* %b, align 4
  %897 = load i32* %a, align 4
  %898 = add i32 %897, %896
  store i32 %898, i32* %a, align 4
  %899 = load i32* %a, align 4
  %900 = load i32* %b, align 4
  %901 = xor i32 %899, %900
  %902 = load i32* %c, align 4
  %903 = xor i32 %901, %902
  %904 = load i32** %2, align 8
  %905 = getelementptr inbounds i32* %904, i64 0
  %906 = load i32* %905
  %907 = add i32 %903, %906
  %908 = add i32 %907, -358537222
  %909 = load i32* %d, align 4
  %910 = add i32 %909, %908
  store i32 %910, i32* %d, align 4
  %911 = load i32* %d, align 4
  %912 = shl i32 %911, 11
  %913 = load i32* %d, align 4
  %914 = lshr i32 %913, 21
  %915 = or i32 %912, %914
  store i32 %915, i32* %d, align 4
  %916 = load i32* %a, align 4
  %917 = load i32* %d, align 4
  %918 = add i32 %917, %916
  store i32 %918, i32* %d, align 4
  %919 = load i32* %d, align 4
  %920 = load i32* %a, align 4
  %921 = xor i32 %919, %920
  %922 = load i32* %b, align 4
  %923 = xor i32 %921, %922
  %924 = load i32** %2, align 8
  %925 = getelementptr inbounds i32* %924, i64 3
  %926 = load i32* %925
  %927 = add i32 %923, %926
  %928 = add i32 %927, -722521979
  %929 = load i32* %c, align 4
  %930 = add i32 %929, %928
  store i32 %930, i32* %c, align 4
  %931 = load i32* %c, align 4
  %932 = shl i32 %931, 16
  %933 = load i32* %c, align 4
  %934 = lshr i32 %933, 16
  %935 = or i32 %932, %934
  store i32 %935, i32* %c, align 4
  %936 = load i32* %d, align 4
  %937 = load i32* %c, align 4
  %938 = add i32 %937, %936
  store i32 %938, i32* %c, align 4
  %939 = load i32* %c, align 4
  %940 = load i32* %d, align 4
  %941 = xor i32 %939, %940
  %942 = load i32* %a, align 4
  %943 = xor i32 %941, %942
  %944 = load i32** %2, align 8
  %945 = getelementptr inbounds i32* %944, i64 6
  %946 = load i32* %945
  %947 = add i32 %943, %946
  %948 = add i32 %947, 76029189
  %949 = load i32* %b, align 4
  %950 = add i32 %949, %948
  store i32 %950, i32* %b, align 4
  %951 = load i32* %b, align 4
  %952 = shl i32 %951, 23
  %953 = load i32* %b, align 4
  %954 = lshr i32 %953, 9
  %955 = or i32 %952, %954
  store i32 %955, i32* %b, align 4
  %956 = load i32* %c, align 4
  %957 = load i32* %b, align 4
  %958 = add i32 %957, %956
  store i32 %958, i32* %b, align 4
  %959 = load i32* %b, align 4
  %960 = load i32* %c, align 4
  %961 = xor i32 %959, %960
  %962 = load i32* %d, align 4
  %963 = xor i32 %961, %962
  %964 = load i32** %2, align 8
  %965 = getelementptr inbounds i32* %964, i64 9
  %966 = load i32* %965
  %967 = add i32 %963, %966
  %968 = add i32 %967, -640364487
  %969 = load i32* %a, align 4
  %970 = add i32 %969, %968
  store i32 %970, i32* %a, align 4
  %971 = load i32* %a, align 4
  %972 = shl i32 %971, 4
  %973 = load i32* %a, align 4
  %974 = lshr i32 %973, 28
  %975 = or i32 %972, %974
  store i32 %975, i32* %a, align 4
  %976 = load i32* %b, align 4
  %977 = load i32* %a, align 4
  %978 = add i32 %977, %976
  store i32 %978, i32* %a, align 4
  %979 = load i32* %a, align 4
  %980 = load i32* %b, align 4
  %981 = xor i32 %979, %980
  %982 = load i32* %c, align 4
  %983 = xor i32 %981, %982
  %984 = load i32** %2, align 8
  %985 = getelementptr inbounds i32* %984, i64 12
  %986 = load i32* %985
  %987 = add i32 %983, %986
  %988 = add i32 %987, -421815835
  %989 = load i32* %d, align 4
  %990 = add i32 %989, %988
  store i32 %990, i32* %d, align 4
  %991 = load i32* %d, align 4
  %992 = shl i32 %991, 11
  %993 = load i32* %d, align 4
  %994 = lshr i32 %993, 21
  %995 = or i32 %992, %994
  store i32 %995, i32* %d, align 4
  %996 = load i32* %a, align 4
  %997 = load i32* %d, align 4
  %998 = add i32 %997, %996
  store i32 %998, i32* %d, align 4
  %999 = load i32* %d, align 4
  %1000 = load i32* %a, align 4
  %1001 = xor i32 %999, %1000
  %1002 = load i32* %b, align 4
  %1003 = xor i32 %1001, %1002
  %1004 = load i32** %2, align 8
  %1005 = getelementptr inbounds i32* %1004, i64 15
  %1006 = load i32* %1005
  %1007 = add i32 %1003, %1006
  %1008 = add i32 %1007, 530742520
  %1009 = load i32* %c, align 4
  %1010 = add i32 %1009, %1008
  store i32 %1010, i32* %c, align 4
  %1011 = load i32* %c, align 4
  %1012 = shl i32 %1011, 16
  %1013 = load i32* %c, align 4
  %1014 = lshr i32 %1013, 16
  %1015 = or i32 %1012, %1014
  store i32 %1015, i32* %c, align 4
  %1016 = load i32* %d, align 4
  %1017 = load i32* %c, align 4
  %1018 = add i32 %1017, %1016
  store i32 %1018, i32* %c, align 4
  %1019 = load i32* %c, align 4
  %1020 = load i32* %d, align 4
  %1021 = xor i32 %1019, %1020
  %1022 = load i32* %a, align 4
  %1023 = xor i32 %1021, %1022
  %1024 = load i32** %2, align 8
  %1025 = getelementptr inbounds i32* %1024, i64 2
  %1026 = load i32* %1025
  %1027 = add i32 %1023, %1026
  %1028 = add i32 %1027, -995338651
  %1029 = load i32* %b, align 4
  %1030 = add i32 %1029, %1028
  store i32 %1030, i32* %b, align 4
  %1031 = load i32* %b, align 4
  %1032 = shl i32 %1031, 23
  %1033 = load i32* %b, align 4
  %1034 = lshr i32 %1033, 9
  %1035 = or i32 %1032, %1034
  store i32 %1035, i32* %b, align 4
  %1036 = load i32* %c, align 4
  %1037 = load i32* %b, align 4
  %1038 = add i32 %1037, %1036
  store i32 %1038, i32* %b, align 4
  %1039 = load i32* %c, align 4
  %1040 = load i32* %b, align 4
  %1041 = load i32* %d, align 4
  %1042 = xor i32 %1041, -1
  %1043 = or i32 %1040, %1042
  %1044 = xor i32 %1039, %1043
  %1045 = load i32** %2, align 8
  %1046 = getelementptr inbounds i32* %1045, i64 0
  %1047 = load i32* %1046
  %1048 = add i32 %1044, %1047
  %1049 = add i32 %1048, -198630844
  %1050 = load i32* %a, align 4
  %1051 = add i32 %1050, %1049
  store i32 %1051, i32* %a, align 4
  %1052 = load i32* %a, align 4
  %1053 = shl i32 %1052, 6
  %1054 = load i32* %a, align 4
  %1055 = lshr i32 %1054, 26
  %1056 = or i32 %1053, %1055
  store i32 %1056, i32* %a, align 4
  %1057 = load i32* %b, align 4
  %1058 = load i32* %a, align 4
  %1059 = add i32 %1058, %1057
  store i32 %1059, i32* %a, align 4
  %1060 = load i32* %b, align 4
  %1061 = load i32* %a, align 4
  %1062 = load i32* %c, align 4
  %1063 = xor i32 %1062, -1
  %1064 = or i32 %1061, %1063
  %1065 = xor i32 %1060, %1064
  %1066 = load i32** %2, align 8
  %1067 = getelementptr inbounds i32* %1066, i64 7
  %1068 = load i32* %1067
  %1069 = add i32 %1065, %1068
  %1070 = add i32 %1069, 1126891415
  %1071 = load i32* %d, align 4
  %1072 = add i32 %1071, %1070
  store i32 %1072, i32* %d, align 4
  %1073 = load i32* %d, align 4
  %1074 = shl i32 %1073, 10
  %1075 = load i32* %d, align 4
  %1076 = lshr i32 %1075, 22
  %1077 = or i32 %1074, %1076
  store i32 %1077, i32* %d, align 4
  %1078 = load i32* %a, align 4
  %1079 = load i32* %d, align 4
  %1080 = add i32 %1079, %1078
  store i32 %1080, i32* %d, align 4
  %1081 = load i32* %a, align 4
  %1082 = load i32* %d, align 4
  %1083 = load i32* %b, align 4
  %1084 = xor i32 %1083, -1
  %1085 = or i32 %1082, %1084
  %1086 = xor i32 %1081, %1085
  %1087 = load i32** %2, align 8
  %1088 = getelementptr inbounds i32* %1087, i64 14
  %1089 = load i32* %1088
  %1090 = add i32 %1086, %1089
  %1091 = add i32 %1090, -1416354905
  %1092 = load i32* %c, align 4
  %1093 = add i32 %1092, %1091
  store i32 %1093, i32* %c, align 4
  %1094 = load i32* %c, align 4
  %1095 = shl i32 %1094, 15
  %1096 = load i32* %c, align 4
  %1097 = lshr i32 %1096, 17
  %1098 = or i32 %1095, %1097
  store i32 %1098, i32* %c, align 4
  %1099 = load i32* %d, align 4
  %1100 = load i32* %c, align 4
  %1101 = add i32 %1100, %1099
  store i32 %1101, i32* %c, align 4
  %1102 = load i32* %d, align 4
  %1103 = load i32* %c, align 4
  %1104 = load i32* %a, align 4
  %1105 = xor i32 %1104, -1
  %1106 = or i32 %1103, %1105
  %1107 = xor i32 %1102, %1106
  %1108 = load i32** %2, align 8
  %1109 = getelementptr inbounds i32* %1108, i64 5
  %1110 = load i32* %1109
  %1111 = add i32 %1107, %1110
  %1112 = add i32 %1111, -57434055
  %1113 = load i32* %b, align 4
  %1114 = add i32 %1113, %1112
  store i32 %1114, i32* %b, align 4
  %1115 = load i32* %b, align 4
  %1116 = shl i32 %1115, 21
  %1117 = load i32* %b, align 4
  %1118 = lshr i32 %1117, 11
  %1119 = or i32 %1116, %1118
  store i32 %1119, i32* %b, align 4
  %1120 = load i32* %c, align 4
  %1121 = load i32* %b, align 4
  %1122 = add i32 %1121, %1120
  store i32 %1122, i32* %b, align 4
  %1123 = load i32* %c, align 4
  %1124 = load i32* %b, align 4
  %1125 = load i32* %d, align 4
  %1126 = xor i32 %1125, -1
  %1127 = or i32 %1124, %1126
  %1128 = xor i32 %1123, %1127
  %1129 = load i32** %2, align 8
  %1130 = getelementptr inbounds i32* %1129, i64 12
  %1131 = load i32* %1130
  %1132 = add i32 %1128, %1131
  %1133 = add i32 %1132, 1700485571
  %1134 = load i32* %a, align 4
  %1135 = add i32 %1134, %1133
  store i32 %1135, i32* %a, align 4
  %1136 = load i32* %a, align 4
  %1137 = shl i32 %1136, 6
  %1138 = load i32* %a, align 4
  %1139 = lshr i32 %1138, 26
  %1140 = or i32 %1137, %1139
  store i32 %1140, i32* %a, align 4
  %1141 = load i32* %b, align 4
  %1142 = load i32* %a, align 4
  %1143 = add i32 %1142, %1141
  store i32 %1143, i32* %a, align 4
  %1144 = load i32* %b, align 4
  %1145 = load i32* %a, align 4
  %1146 = load i32* %c, align 4
  %1147 = xor i32 %1146, -1
  %1148 = or i32 %1145, %1147
  %1149 = xor i32 %1144, %1148
  %1150 = load i32** %2, align 8
  %1151 = getelementptr inbounds i32* %1150, i64 3
  %1152 = load i32* %1151
  %1153 = add i32 %1149, %1152
  %1154 = add i32 %1153, -1894986606
  %1155 = load i32* %d, align 4
  %1156 = add i32 %1155, %1154
  store i32 %1156, i32* %d, align 4
  %1157 = load i32* %d, align 4
  %1158 = shl i32 %1157, 10
  %1159 = load i32* %d, align 4
  %1160 = lshr i32 %1159, 22
  %1161 = or i32 %1158, %1160
  store i32 %1161, i32* %d, align 4
  %1162 = load i32* %a, align 4
  %1163 = load i32* %d, align 4
  %1164 = add i32 %1163, %1162
  store i32 %1164, i32* %d, align 4
  %1165 = load i32* %a, align 4
  %1166 = load i32* %d, align 4
  %1167 = load i32* %b, align 4
  %1168 = xor i32 %1167, -1
  %1169 = or i32 %1166, %1168
  %1170 = xor i32 %1165, %1169
  %1171 = load i32** %2, align 8
  %1172 = getelementptr inbounds i32* %1171, i64 10
  %1173 = load i32* %1172
  %1174 = add i32 %1170, %1173
  %1175 = add i32 %1174, -1051523
  %1176 = load i32* %c, align 4
  %1177 = add i32 %1176, %1175
  store i32 %1177, i32* %c, align 4
  %1178 = load i32* %c, align 4
  %1179 = shl i32 %1178, 15
  %1180 = load i32* %c, align 4
  %1181 = lshr i32 %1180, 17
  %1182 = or i32 %1179, %1181
  store i32 %1182, i32* %c, align 4
  %1183 = load i32* %d, align 4
  %1184 = load i32* %c, align 4
  %1185 = add i32 %1184, %1183
  store i32 %1185, i32* %c, align 4
  %1186 = load i32* %d, align 4
  %1187 = load i32* %c, align 4
  %1188 = load i32* %a, align 4
  %1189 = xor i32 %1188, -1
  %1190 = or i32 %1187, %1189
  %1191 = xor i32 %1186, %1190
  %1192 = load i32** %2, align 8
  %1193 = getelementptr inbounds i32* %1192, i64 1
  %1194 = load i32* %1193
  %1195 = add i32 %1191, %1194
  %1196 = add i32 %1195, -2054922799
  %1197 = load i32* %b, align 4
  %1198 = add i32 %1197, %1196
  store i32 %1198, i32* %b, align 4
  %1199 = load i32* %b, align 4
  %1200 = shl i32 %1199, 21
  %1201 = load i32* %b, align 4
  %1202 = lshr i32 %1201, 11
  %1203 = or i32 %1200, %1202
  store i32 %1203, i32* %b, align 4
  %1204 = load i32* %c, align 4
  %1205 = load i32* %b, align 4
  %1206 = add i32 %1205, %1204
  store i32 %1206, i32* %b, align 4
  %1207 = load i32* %c, align 4
  %1208 = load i32* %b, align 4
  %1209 = load i32* %d, align 4
  %1210 = xor i32 %1209, -1
  %1211 = or i32 %1208, %1210
  %1212 = xor i32 %1207, %1211
  %1213 = load i32** %2, align 8
  %1214 = getelementptr inbounds i32* %1213, i64 8
  %1215 = load i32* %1214
  %1216 = add i32 %1212, %1215
  %1217 = add i32 %1216, 1873313359
  %1218 = load i32* %a, align 4
  %1219 = add i32 %1218, %1217
  store i32 %1219, i32* %a, align 4
  %1220 = load i32* %a, align 4
  %1221 = shl i32 %1220, 6
  %1222 = load i32* %a, align 4
  %1223 = lshr i32 %1222, 26
  %1224 = or i32 %1221, %1223
  store i32 %1224, i32* %a, align 4
  %1225 = load i32* %b, align 4
  %1226 = load i32* %a, align 4
  %1227 = add i32 %1226, %1225
  store i32 %1227, i32* %a, align 4
  %1228 = load i32* %b, align 4
  %1229 = load i32* %a, align 4
  %1230 = load i32* %c, align 4
  %1231 = xor i32 %1230, -1
  %1232 = or i32 %1229, %1231
  %1233 = xor i32 %1228, %1232
  %1234 = load i32** %2, align 8
  %1235 = getelementptr inbounds i32* %1234, i64 15
  %1236 = load i32* %1235
  %1237 = add i32 %1233, %1236
  %1238 = add i32 %1237, -30611744
  %1239 = load i32* %d, align 4
  %1240 = add i32 %1239, %1238
  store i32 %1240, i32* %d, align 4
  %1241 = load i32* %d, align 4
  %1242 = shl i32 %1241, 10
  %1243 = load i32* %d, align 4
  %1244 = lshr i32 %1243, 22
  %1245 = or i32 %1242, %1244
  store i32 %1245, i32* %d, align 4
  %1246 = load i32* %a, align 4
  %1247 = load i32* %d, align 4
  %1248 = add i32 %1247, %1246
  store i32 %1248, i32* %d, align 4
  %1249 = load i32* %a, align 4
  %1250 = load i32* %d, align 4
  %1251 = load i32* %b, align 4
  %1252 = xor i32 %1251, -1
  %1253 = or i32 %1250, %1252
  %1254 = xor i32 %1249, %1253
  %1255 = load i32** %2, align 8
  %1256 = getelementptr inbounds i32* %1255, i64 6
  %1257 = load i32* %1256
  %1258 = add i32 %1254, %1257
  %1259 = add i32 %1258, -1560198380
  %1260 = load i32* %c, align 4
  %1261 = add i32 %1260, %1259
  store i32 %1261, i32* %c, align 4
  %1262 = load i32* %c, align 4
  %1263 = shl i32 %1262, 15
  %1264 = load i32* %c, align 4
  %1265 = lshr i32 %1264, 17
  %1266 = or i32 %1263, %1265
  store i32 %1266, i32* %c, align 4
  %1267 = load i32* %d, align 4
  %1268 = load i32* %c, align 4
  %1269 = add i32 %1268, %1267
  store i32 %1269, i32* %c, align 4
  %1270 = load i32* %d, align 4
  %1271 = load i32* %c, align 4
  %1272 = load i32* %a, align 4
  %1273 = xor i32 %1272, -1
  %1274 = or i32 %1271, %1273
  %1275 = xor i32 %1270, %1274
  %1276 = load i32** %2, align 8
  %1277 = getelementptr inbounds i32* %1276, i64 13
  %1278 = load i32* %1277
  %1279 = add i32 %1275, %1278
  %1280 = add i32 %1279, 1309151649
  %1281 = load i32* %b, align 4
  %1282 = add i32 %1281, %1280
  store i32 %1282, i32* %b, align 4
  %1283 = load i32* %b, align 4
  %1284 = shl i32 %1283, 21
  %1285 = load i32* %b, align 4
  %1286 = lshr i32 %1285, 11
  %1287 = or i32 %1284, %1286
  store i32 %1287, i32* %b, align 4
  %1288 = load i32* %c, align 4
  %1289 = load i32* %b, align 4
  %1290 = add i32 %1289, %1288
  store i32 %1290, i32* %b, align 4
  %1291 = load i32* %c, align 4
  %1292 = load i32* %b, align 4
  %1293 = load i32* %d, align 4
  %1294 = xor i32 %1293, -1
  %1295 = or i32 %1292, %1294
  %1296 = xor i32 %1291, %1295
  %1297 = load i32** %2, align 8
  %1298 = getelementptr inbounds i32* %1297, i64 4
  %1299 = load i32* %1298
  %1300 = add i32 %1296, %1299
  %1301 = add i32 %1300, -145523070
  %1302 = load i32* %a, align 4
  %1303 = add i32 %1302, %1301
  store i32 %1303, i32* %a, align 4
  %1304 = load i32* %a, align 4
  %1305 = shl i32 %1304, 6
  %1306 = load i32* %a, align 4
  %1307 = lshr i32 %1306, 26
  %1308 = or i32 %1305, %1307
  store i32 %1308, i32* %a, align 4
  %1309 = load i32* %b, align 4
  %1310 = load i32* %a, align 4
  %1311 = add i32 %1310, %1309
  store i32 %1311, i32* %a, align 4
  %1312 = load i32* %b, align 4
  %1313 = load i32* %a, align 4
  %1314 = load i32* %c, align 4
  %1315 = xor i32 %1314, -1
  %1316 = or i32 %1313, %1315
  %1317 = xor i32 %1312, %1316
  %1318 = load i32** %2, align 8
  %1319 = getelementptr inbounds i32* %1318, i64 11
  %1320 = load i32* %1319
  %1321 = add i32 %1317, %1320
  %1322 = add i32 %1321, -1120210379
  %1323 = load i32* %d, align 4
  %1324 = add i32 %1323, %1322
  store i32 %1324, i32* %d, align 4
  %1325 = load i32* %d, align 4
  %1326 = shl i32 %1325, 10
  %1327 = load i32* %d, align 4
  %1328 = lshr i32 %1327, 22
  %1329 = or i32 %1326, %1328
  store i32 %1329, i32* %d, align 4
  %1330 = load i32* %a, align 4
  %1331 = load i32* %d, align 4
  %1332 = add i32 %1331, %1330
  store i32 %1332, i32* %d, align 4
  %1333 = load i32* %a, align 4
  %1334 = load i32* %d, align 4
  %1335 = load i32* %b, align 4
  %1336 = xor i32 %1335, -1
  %1337 = or i32 %1334, %1336
  %1338 = xor i32 %1333, %1337
  %1339 = load i32** %2, align 8
  %1340 = getelementptr inbounds i32* %1339, i64 2
  %1341 = load i32* %1340
  %1342 = add i32 %1338, %1341
  %1343 = add i32 %1342, 718787259
  %1344 = load i32* %c, align 4
  %1345 = add i32 %1344, %1343
  store i32 %1345, i32* %c, align 4
  %1346 = load i32* %c, align 4
  %1347 = shl i32 %1346, 15
  %1348 = load i32* %c, align 4
  %1349 = lshr i32 %1348, 17
  %1350 = or i32 %1347, %1349
  store i32 %1350, i32* %c, align 4
  %1351 = load i32* %d, align 4
  %1352 = load i32* %c, align 4
  %1353 = add i32 %1352, %1351
  store i32 %1353, i32* %c, align 4
  %1354 = load i32* %d, align 4
  %1355 = load i32* %c, align 4
  %1356 = load i32* %a, align 4
  %1357 = xor i32 %1356, -1
  %1358 = or i32 %1355, %1357
  %1359 = xor i32 %1354, %1358
  %1360 = load i32** %2, align 8
  %1361 = getelementptr inbounds i32* %1360, i64 9
  %1362 = load i32* %1361
  %1363 = add i32 %1359, %1362
  %1364 = add i32 %1363, -343485551
  %1365 = load i32* %b, align 4
  %1366 = add i32 %1365, %1364
  store i32 %1366, i32* %b, align 4
  %1367 = load i32* %b, align 4
  %1368 = shl i32 %1367, 21
  %1369 = load i32* %b, align 4
  %1370 = lshr i32 %1369, 11
  %1371 = or i32 %1368, %1370
  store i32 %1371, i32* %b, align 4
  %1372 = load i32* %c, align 4
  %1373 = load i32* %b, align 4
  %1374 = add i32 %1373, %1372
  store i32 %1374, i32* %b, align 4
  %1375 = load i32* %a, align 4
  %1376 = load i32** %1, align 8
  %1377 = getelementptr inbounds i32* %1376, i64 0
  %1378 = load i32* %1377
  %1379 = add i32 %1378, %1375
  store i32 %1379, i32* %1377
  %1380 = load i32* %b, align 4
  %1381 = load i32** %1, align 8
  %1382 = getelementptr inbounds i32* %1381, i64 1
  %1383 = load i32* %1382
  %1384 = add i32 %1383, %1380
  store i32 %1384, i32* %1382
  %1385 = load i32* %c, align 4
  %1386 = load i32** %1, align 8
  %1387 = getelementptr inbounds i32* %1386, i64 2
  %1388 = load i32* %1387
  %1389 = add i32 %1388, %1385
  store i32 %1389, i32* %1387
  %1390 = load i32* %d, align 4
  %1391 = load i32** %1, align 8
  %1392 = getelementptr inbounds i32* %1391, i64 3
  %1393 = load i32* %1392
  %1394 = add i32 %1393, %1390
  store i32 %1394, i32* %1392
  ret void
}

define internal i32 @is_big_endian() nounwind uwtable {
  %1 = load i8* bitcast (i32* @is_big_endian.n to i8*)
  %2 = sext i8 %1 to i32
  %3 = icmp eq i32 %2, 0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

declare void @llvm.va_copy(i8*, i8*) nounwind

declare i32 @ferror(%struct._IO_FILE*) nounwind

declare i64 @send(i32, i8*, i64, i32)
