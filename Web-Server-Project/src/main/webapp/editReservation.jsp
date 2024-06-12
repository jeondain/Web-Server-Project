<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp" %>

<%
    // 예약 번호를 파라미터로 받습니다.
    String reservationId = request.getParameter("id");
    if (reservationId == null || reservationId.isEmpty()) {
        out.println("<script>alert('유효하지 않은 예약 번호입니다.'); history.back();</script>");
        return;
    }

    PreparedStatement pstmt = null;
    ResultSet rs = null;
    String sql = "SELECT * FROM Reservation WHERE id = ?";
    try {
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, reservationId);
        rs = pstmt.executeQuery();

        // 예약 정보를 가져옵니다.
        if (rs.next()) {
            String memberId = rs.getString("memberId");
            String checkInOut = rs.getString("checkInOut");
            int guests = rs.getInt("guests");
            String roomType = rs.getString("roomType");
            String wakeUpCall = rs.getString("wakeUpCall");
            String spa = rs.getString("spa");
            String extraBed = rs.getString("extraBed");
            String addGuests = rs.getString("addGuests");
            String requests = rs.getString("requests");
            int totalPrice = rs.getInt("totalPrice");
%>

<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>예약 수정하기</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.svg" />
    <!-- Place favicon.ico in the root directory -->

    <!-- Web Font -->
    <link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">

    <!-- ========================= CSS here ========================= -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/css/LineIcons.2.0.css" />
    <link rel="stylesheet" href="assets/css/animate.css" />
    <link rel="stylesheet" href="assets/css/tiny-slider.css" />
    <link rel="stylesheet" href="assets/css/glightbox.min.css" />
    <link rel="stylesheet" href="assets/css/main.css" />

    <link rel="stylesheet" href="assets/calendarAsset/styles.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

    <!-- Form -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <jsp:include page="header.jsp" />
    <!-- Start Breadcrumbs -->
    <div class="breadcrumbs">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">예약 수정하기</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="index.html">Home</a></li>
                        <li>예약 수정하기</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End Breadcrumbs -->

    <!-- Start About Area -->
    <section class="about-us section">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <!-- content-1 start -->
                <div class="content-right wow fadeInRight" data-wow-delay=".5s">
                    <!-- Heading -->
                    <h2>예약 수정하기</h2>

                    <form action="processEditReservation.jsp" name="reservation" method="post" onsubmit="return validateForm()">
                        <!-- 예약 번호를 hidden으로 전송 -->
                        <input type="hidden" name="id" value="<%= reservationId %>">
                        <p> 
                            회원 ID <input type="text" class="form-control form-control-lg" name="memberId" id="memberId" value="<%= memberId %>">
                        </p>
                        <p>
                            입실/퇴실 날짜 <input type="text" name="inout" value="<%= checkInOut %>" readonly />
                        </p>
                        <p>
                            인원수 <select class="form-control form-control-lg" name="guests">
                                <option value="1" <%= guests == 1 ? "selected" : "" %>>1명</option>
                                <option value="2" <%= guests == 2 ? "selected" : "" %>>2명</option>
                                <option value="3" <%= guests == 3 ? "selected" : "" %>>3명</option>
                            </select>
                        </p>
                        <p>
                            객실 <select class="form-control form-control-lg" name="roomType">
                                <option value="스위트룸" <%= roomType.equals("스위트룸") ? "selected" : "" %>>스위트룸</option>
                                <option value="트윈배드룸" <%= roomType.equals("트윈배드룸") ? "selected" : "" %>>트윈배드룸</option>
                                <option value="디럭스룸" <%= roomType.equals("디럭스룸") ? "selected" : "" %>>디럭스룸</option>
                            </select>
                        </p>
                        <p>
                            모닝콜 서비스 <select class="form-control form-control-lg" name="wakeUpCall">
                                <option value="이용하지 않음" <%= wakeUpCall.equals("이용하지 않음") ? "selected" : "" %>>이용하지 않음</option>
                                <option value="6:00 am" <%= wakeUpCall.equals("6:00 am") ? "selected" : "" %>>6:00 am</option>
                                <option value="7:00 am" <%= wakeUpCall.equals("7:00 am") ? "selected" : "" %>>7:00 am</option>
                                <option value="8:00 am" <%= wakeUpCall.equals("8:00 am") ? "selected" : "" %>>8:00 am</option>
                                <option value="9:00 am" <%= wakeUpCall.equals("9:00 am") ? "selected" : "" %>>9:00 am</option>
                                <option value="10:00 am" <%= wakeUpCall.equals("10:00 am") ? "selected" : "" %>>10:00 am</option>
                                <option value="11:00 am" <%= wakeUpCall.equals("11:00 am") ? "selected" : "" %>>11:00 am</option>
                            </select>
                        </p>
                        <p>
                            스파 이용권 <select class="form-control form-control-lg" name="spa">
                                <option value="선택하지 않음" <%= spa.equals("선택하지 않음") ? "selected" : "" %>>선택하지 않음</option>
                                <option value="이용권" <%= spa.equals("이용권") ? "selected" : "" %>>이용권 (+ 30,000)</option>
                            </select>
                        </p>
                        <p>
                            침대 추가 <select class="form-control form-control-lg" name="extraBed">
                                <option value="추가하지 않음" <%= extraBed.equals("추가하지 않음") ? "selected" : "" %>>추가하지 않음</option>
                                <option value="더블 배드" <%= extraBed.equals("더블 배드") ? "selected" : "" %>>더블 배드 (+ 30,000)</option>
                            </select>
                        </p>
                        <p>
                            인원 추가 <select class="form-control form-control-lg" name="addGuests">
                                <option value="추가하지 않음" <%= addGuests.equals("추가하지 않음") ? "selected" : "" %>>추가하지 않음</option>
                                <option value="1" <%= addGuests.equals("1") ? "selected" : "" %>>1명 (+ 20,000)</option>
                                <option value="2" <%= addGuests.equals("2") ? "selected" : "" %>>2명 (+ 40,000)</option>
                                <option value="3" <%= addGuests.equals("3") ? "selected" : "" %>>3명 (+ 60,000)</option>
                            </select>
                        </p>
                        <p>
                            요청사항
                            <textarea class="form-control" name="requests" rows="3"><%= requests %></textarea>
                        </p>
                        <!-- 총 결제 금액을 표시하는 부분 -->
                        <h5>총 결제 금액: <span id="totalPrice"><%= totalPrice %></span><br><br></h5>
                        
                        <!-- 총 결제 금액 전송을 위한 hidden input -->
                        <input type="hidden" name="totalPrice" value="<%= totalPrice %>">

                    <!-- End Heading -->
                    <div class="button header-button">
                        <button type="submit" class="btn">수정하기</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- End About Area -->

    <jsp:include page="footer.jsp" />
    <!-- ========================= scroll-top ========================= -->
    <a href="#" class="scroll-top btn-hover"> <i class="lni lni-chevron-up"></i>
    </a>

    <!-- ========================= JS here ========================= -->
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
    <script src="assets/js/tiny-slider.js"></script>
    <script src="assets/js/glightbox.min.js"></script>
    <script src="assets/js/count-up.min.js"></script>
    <script src="assets/js/main.js"></script>
    <script type="text/javascript"></script>

    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>

    <script>
        $(document).ready(function() {
            $(function() {
                $('input[name="inout"]').daterangepicker({
                    "startDate": "<%= checkInOut.split(" - ")[0] %>",
                    "endDate": "<%= checkInOut.split(" - ")[1] %>",
                    opens: 'center',
                    locale: {
                        format: 'DD/MM/YYYY'
                    }
                });
            });

            const roomTypeSelect = document.getElementsByName('roomType')[0];
            const spaSelect = document.getElementsByName('spa')[0];
            const additionalGuestsSelect = document.getElementsByName('addGuests')[0];
            const extraBedSelect = document.getElementsByName('extraBed')[0];

            roomTypeSelect.addEventListener('change', calculateTotal);
            spaSelect.addEventListener('change', calculateTotal);
            additionalGuestsSelect.addEventListener('change', calculateTotal);
            extraBedSelect.addEventListener('change', calculateTotal);

            function calculateTotal() {
                const roomType = roomTypeSelect.value;
                const spa = spaSelect.value;
                const additionalGuests = additionalGuestsSelect.value;
                const extraBed = extraBedSelect.value;

                let total = calculateRoomPrice(roomType);
                total += calculateSpaPrice(spa);
                total += calculateAdditionalGuestsPrice(additionalGuests);
                total += calculateExtraBedPrice(extraBed);

                document.getElementById('totalPrice').innerText = total.toLocaleString();
                document.getElementsByName('totalPrice')[0].value = total;
            }

            function calculateRoomPrice(roomType) {
                const roomPrices = {
                    '스위트룸': 100000,
                    '트윈배드룸': 250000,
                    '디럭스룸': 300000
                };
                return roomPrices[roomType] || 0;
            }

            function calculateSpaPrice(spa) {
                return spa === '이용권' ? 30000 : 0;
            }

            function calculateAdditionalGuestsPrice(additionalGuests) {
                return additionalGuests === '추가하지 않음' ? 0 : parseInt(additionalGuests) * 20000;
            }

            function calculateExtraBedPrice(extraBed) {
                return extraBed === '추가하지 않음' ? 0 : 30000;
            }

            calculateTotal();
        });
    </script>
    <script>
    function validateForm() {
        var memberIdInput = document.getElementById('memberId');
        var memberIdValue = memberIdInput.value.trim();
        var numericRegex = /^[a-zA-Z0-9]+$/;

        if (memberIdValue === '') {
            alert('회원 아이디를 입력하세요.');
            memberIdInput.focus();
            return false;
        } else if (!numericRegex.test(memberIdValue)) {
            alert('회원 아이디는 숫자와 영어만 입력 가능합니다.');
            memberIdInput.focus();
            return false;
        }
        return true;
    }
</script>
</body>
</html>

<%
        } else {
            out.println("<script>alert('유효하지 않은 예약 번호입니다.'); history.back();</script>");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<script>alert('데이터베이스 오류가 발생했습니다.'); history.back();</script>");
    } finally {
        if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>
