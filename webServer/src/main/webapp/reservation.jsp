<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>예약하기</title>
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
                        <h1 class="page-title">예약하기</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="index.html">Home</a></li>
                        <li>예약하기</li>
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
                    <h2>객실 예약하기</h2>

                    <% out.println("Today : " + java.util.Calendar.getInstance().getTime() + "<br><br>"); %>
                    <form action="processReservation.jsp" name="reservation" method="post" onsubmit="return validateForm()">
                        <p> 
                        	회원 ID <input type="text" class="form-control form-control-lg" name="memberId" id="memberId">
                        <p>
                            <!-- 날짜 카운트해서 몇박 며칠해서 금액 계산  -->
                            입실/퇴실 날짜 <input type="text" name="inout" value="01/01/0000 - 01/15/2018" readonly />
                        <p>
                            인원수 <select class="form-control form-control-lg" name="guests">
                                <option value="1">1명</option>
                                <option value="2">2명</option>
                                <option value="3">3명</option>
                            </select>
                        <p>
                            객실 <select class="form-control form-control-lg" name="roomType">
                                <option value="스위트룸">스위트룸</option>
                                <option value="트윈배드룸">트윈배드룸</option>
                                <option value="디럭스룸">디럭스룸</option>
                            </select>
                        <p>
                            모닝콜 서비스 <select class="form-control form-control-lg" name="wakeUpCall">
                                <option value="이용하지 않음">이용하지 않음</option>
                                <option value="6:00 am">6:00 am</option>
                                <option value="7:00 am">7:00 am</option>
                                <option value="8:00 am">8:00 am</option>
                                <option value="9:00 am">9:00 am</option>
                                <option value="10:00 am">10:00 am</option>
                                <option value="11:00 am">11:00 am</option>
                            </select>
                        <p>
                            스파 이용권 <select class="form-control form-control-lg" name="spa">
                                <option value="선택하지 않음">선택하지 않음</option>
                                <option value="이용권">이용권 (+ 30,000)</option>
                            </select>
                        <p>
                            침대 추가 <select class="form-control form-control-lg" name=extraBed>
                                <option value="추가하지 않음">추가하지 않음</option>
                                <option value="더블 배드">더블 배드 (+ 30,000)</option>
                            </select>
                        <p>
                            인원 추가 <select class="form-control form-control-lg" name="addGuests">
                                <option value="추가하지 않음">추가하지 않음</option>
                                <option value="1">1명 (+ 20,000)</option>
                                <option value="2">2명 (+ 40,000)</option>
                                <option value="3">3명 (+ 60,000)</option>
                            </select>
                        <p>
                            요청사항
                            <textarea class="form-control" name="requests" rows="3"></textarea>
                        <!-- 총 결제 금액을 표시하는 부분 -->
                        <h5>총 결제 금액: <span id="totalPrice">0</span><br><br></h5>
                        
                        <!-- 총 결제 금액 전송을 위한 hidden input -->
                        <input type="hidden" name="totalPrice" value="0">
                    

                    <!-- End Heading -->
                    <div class="button header-button">
                        <button type="submit" class="btn">예약하기</button>
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
                    "startDate": "04/06/2024",
                    "endDate": "30/06/2024",
                    opens: 'center',
                    locale: {
                        format: 'DD/MM/YYYY'
                    }
                });
            });

         // 선택 상자 요소들을 가져옵니다.
            const roomTypeSelect = document.getElementsByName('roomType')[0];
            const spaSelect = document.getElementsByName('spa')[0];
            const additionalGuestsSelect = document.getElementsByName('addGuests')[0];
            const extraBedSelect = document.getElementsByName('extraBed')[0];

            // 각 선택 상자에 대한 변경 이벤트 리스너를 추가합니다.
            roomTypeSelect.addEventListener('change', calculateTotal);
            spaSelect.addEventListener('change', calculateTotal);
            additionalGuestsSelect.addEventListener('change', calculateTotal);
            extraBedSelect.addEventListener('change', calculateTotal);

            // 총 결제 금액을 계산하고 업데이트하는 함수
            function calculateTotal() {
                // 선택한 옵션들을 가져옵니다.
                const roomType = roomTypeSelect.value;
                const spa = spaSelect.value;
                const additionalGuests = additionalGuestsSelect.value;
                const extraBed = extraBedSelect.value;

                // 총 결제 금액을 계산합니다.
                let total = calculateRoomPrice(roomType);
                total += calculateSpaPrice(spa);
                total += calculateAdditionalGuestsPrice(additionalGuests);
                total += calculateExtraBedPrice(extraBed);

                // 총 결제 금액을 화면에 업데이트합니다.
                document.getElementById('totalPrice').innerText = total.toLocaleString();

                // 총 결제 금액을 hidden input에 업데이트합니다.
                document.getElementsByName('totalPrice')[0].value = total;
            }


            // 각 옵션에 따른 객실 가격을 계산하는 함수
            function calculateRoomPrice(roomType) {
                const roomPrices = {
                    '스위트룸': 100000,
                    '트윈배드룸': 250000,
                    '디럭스룸': 300000
                };
                return roomPrices[roomType] || 0; // 선택한 옵션이 없을 경우 0을 반환합니다.
            }

            // 각 옵션에 따른 스파 이용권 가격을 계산하는 함수
            function calculateSpaPrice(spa) {
                return spa === '이용권' ? 30000 : 0;
            }

            // 각 옵션에 따른 추가 게스트 가격을 계산하는 함수
            function calculateAdditionalGuestsPrice(additionalGuests) {
                return additionalGuests === '추가하지 않음' ? 0 : parseInt(additionalGuests) * 20000;
            }

            // 각 옵션에 따른 추가 침대 가격을 계산하는 함수
            function calculateExtraBedPrice(extraBed) {
                return extraBed === '추가하지 않음' ? 0 : 30000;
            }

            // 페이지 로드 시 총 결제 금액을 계산합니다.
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
                            
