import '../../../../index.dart';

class SignUpAgreementScreen extends ConsumerStatefulWidget {
  const SignUpAgreementScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpAgreementScreenState();
}

class _SignUpAgreementScreenState extends ConsumerState<SignUpAgreementScreen> {
  
  bool _isTermsAccepted = false;
  bool _isPrivacyPolicyAccepted = false;

  bool _isExpanded1 = false;
  bool _isExpanded2 = false;

  // 펼쳐졌을 때 보여줄 전체 텍스트
  final String _fullText1 = '제 1 조 (목적)\n'
    '본 약관은 [앱 이름] (이하 "회사")가 제공하는 모든 서비스(이하 "서비스")의 이용과 관련하여, 회사와 회원 간의 권리, 의무, 책임사항 및 기타 필요한 사항을 규정함을 목적으로 합니다.\n\n'
    '제 2 조 (용어 정의)\n'
    '1. "회원"이라 함은 회사의 서비스에 접속하여 본 약관에 따라 회사와 이용계약을 체결하고 회사가 제공하는 서비스를 이용하는 자를 말합니다.\n'
    '2. "서비스"라 함은 회사가 제공하는 모든 콘텐츠와 관련 서비스 일체를 의미합니다.\n\n'
    '제 3 조 (약관의 효력 및 변경)\n'
    '1. 본 약관은 회원이 동의함으로써 효력이 발생하며, 회사는 합리적인 사유가 있을 경우 관련 법령을 위반하지 않는 범위에서 본 약관을 변경할 수 있습니다.\n'
    '2. 변경된 약관은 회사의 공식 앱 또는 웹사이트를 통해 공지되며, 공지 후 7일 이내에 이의 제기가 없는 경우 변경된 약관에 동의한 것으로 간주합니다.\n\n'
    '제 4 조 (회원가입 및 서비스 이용)\n'
    '1. 회원가입은 회사가 제공하는 절차에 따라 회원이 본 약관에 동의하고 회원 정보를 기입함으로써 성립됩니다.\n'
    '2. 회원은 서비스 이용 시 등록한 정보가 정확하고 최신 정보임을 보장해야 합니다.\n\n'
    '제 5 조 (서비스 제공의 중단)\n'
    '회사는 시스템 점검, 유지보수, 또는 기타 합리적인 사유로 서비스 제공을 일시적으로 중단할 수 있으며, 사전 또는 사후에 회원에게 공지합니다.\n\n'
    '제 6 조 (회원 탈퇴 및 자격 상실)\n'
    '1. 회원은 언제든지 서비스 내의 탈퇴 기능을 이용하여 탈퇴할 수 있습니다.\n'
    '2. 회원이 본 약관을 위반하거나 법령을 위반하는 경우, 회사는 회원의 자격을 제한 또는 정지할 수 있습니다.';

  final String _privacyPolicy = '제 1 조 (개인정보의 수집 항목)\n'
    '회사는 회원가입, 서비스 제공 등을 위해 아래와 같은 개인정보를 수집할 수 있습니다.\n'
    '1. 회원가입 시: 이름, 이메일 주소, 전화번호, 비밀번호\n'
    '2. 서비스 이용 시: 서비스 이용 기록, 접속 로그, 쿠키, 접속 IP 정보\n\n'
    '제 2 조 (개인정보의 수집 및 이용 목적)\n'
    '회사는 다음과 같은 목적을 위해 회원의 개인정보를 수집하고 이용합니다.\n'
    '1. 회원관리: 회원제 서비스 이용에 따른 본인 확인, 회원 식별, 부정 이용 방지\n'
    '2. 서비스 제공: 서비스 제공 및 맞춤형 콘텐츠 제공\n'
    '3. 마케팅 및 광고: 서비스 개선 및 이벤트 참여 기회 제공\n\n'
    '제 3 조 (개인정보의 보유 및 이용 기간)\n'
    '1. 회원의 개인정보는 회원 탈퇴 시까지 보유 및 이용됩니다. 단, 관계 법령에 의하여 보존할 필요가 있는 경우 법령에 따라 일정 기간 보관할 수 있습니다.\n'
    '2. 관련 법령에 따른 보관 기간 예시:\n'
    '   - 계약 또는 청약철회 관련 기록: 5년 (전자상거래 등에서의 소비자 보호에 관한 법률)\n'
    '   - 서비스 이용 기록: 3년 (통신비밀보호법)\n\n'
    '제 4 조 (개인정보의 제3자 제공)\n'
    '회사는 원칙적으로 회원의 개인정보를 외부에 제공하지 않습니다. 다만, 다음의 경우 예외로 합니다.\n'
    '1. 회원이 사전에 동의한 경우\n'
    '2. 법령의 규정에 의거하거나, 수사 목적으로 법령에 따른 절차와 방법에 따라 수사기관의 요구가 있는 경우\n\n'
    '제 5 조 (개인정보의 파기 절차 및 방법)\n'
    '1. 회사는 개인정보 보유 기간의 경과, 처리 목적 달성 등으로 인해 개인정보가 불필요하게 되었을 때에는 지체 없이 해당 개인정보를 파기합니다.\n'
    '2. 파기 방법: 전자적 파일 형태로 저장된 개인정보는 복구 불가능한 방법으로 삭제하며, 종이 문서 형태로 저장된 개인정보는 분쇄하거나 소각합니다.\n\n'
    '제 6 조 (이용자의 권리와 그 행사 방법)\n'
    '1. 회원은 언제든지 등록된 개인정보를 조회하거나 수정할 수 있으며, 계정 탈퇴를 요청할 수 있습니다.\n'
    '2. 개인정보 열람 및 정정을 위해 회원은 서비스 내 설정 메뉴를 이용하거나, 회사의 개인정보 보호 책임자에게 연락할 수 있습니다.';

  // 애니메이션에 사용할 최대 높이와 최소 높이
  double _collapsedHeight = 0.0;
  double _expandedHeight = 200.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('회원가입 동의'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '회원가입을 위해 아래 약관에 동의해주세요.',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 20),
                    CheckboxListTile(
                      title: const Text('이용약관에 동의합니다.'),
                      value: _isTermsAccepted,
                      onChanged: (bool? value) {
                        setState(() {
                          _isTermsAccepted = value ?? false;
                        });
                      },
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isExpanded1 = !_isExpanded1;
                        });
                      },
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text('자세히 보기'),
                      ),
                    ),
                    // AnimatedContainer(
                    //   duration: Duration(milliseconds: 10000), // 애니메이션 지속 시간
                    //   curve: Curves.easeInOut, // 애니메이션 커브
                    //   child: Text(
                    //     _isExpanded ? '11111111111111111111111111111111111111111111111111111' : '', // 텍스트 상태에 따라 변경
                    //     style: TextStyle(fontSize: 16.0),
                    //     maxLines: _isExpanded ? null : 2, // 줄 수 제한 (펼친 상태면 제한 없음)
                    //     overflow: TextOverflow.fade, // 텍스트가 넘치면 페이드 처리
                    //   ),
                    // ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300), // 애니메이션 지속 시간
                      curve: Curves.easeInOut, // 애니메이션 커브
                      // curve: Curves.bounceIn, // 애니메이션 커브
                      height: _isExpanded1 ? _expandedHeight : _collapsedHeight, // 높이 조정
                      child: SingleChildScrollView(
                        child: Text(
                          _fullText1, // 항상 전체 텍스트를 사용
                          style: const TextStyle(fontSize: 16.0),
                          softWrap: true,
                          overflow: TextOverflow.fade, // 텍스트가 넘칠 때 페이드
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    CheckboxListTile(
                      title: const Text('개인정보 처리방침에 동의합니다.'),
                      value: _isPrivacyPolicyAccepted,
                      onChanged: (bool? value) {
                        setState(() {
                          _isPrivacyPolicyAccepted = value ?? false;
                        });
                      },
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isExpanded2 = !_isExpanded2;
                        });
                      },
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text('자세히 보기'),
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300), // 애니메이션 지속 시간
                      curve: Curves.easeInOut, // 애니메이션 커브
                      // curve: Curves.bounceIn, // 애니메이션 커브
                      height: _isExpanded2 ? _expandedHeight : _collapsedHeight, // 높이 조정
                      child: SingleChildScrollView(
                        child: Text(
                          _privacyPolicy, // 항상 전체 텍스트를 사용
                          style: const TextStyle(fontSize: 16.0),
                          softWrap: true,
                          overflow: TextOverflow.fade, // 텍스트가 넘칠 때 페이드
                        ),
                      ),
                    ),
                    // CheckboxListTile(
                    //   title: Text(''),
                    //   value: _isPrivacyPolicyAccepted,
                    //   onChanged: (bool? value) {
                    //     setState(() {
                    //       _isPrivacyPolicyAccepted = value ?? false;
                    //     });
                    //   },
                    // ),
                  ],
                ),
              ),
            ),
            // Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: _isTermsAccepted && _isPrivacyPolicyAccepted
                        ? () {
                            // 동의 버튼 클릭 시 처리 로직
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text('동의 완료'),
                                content: const Text('회원가입 동의가 완료되었습니다.'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      context.pop(true);
                                    },
                                    child: const Text('확인'),
                                  ),
                                ],
                              ),
                            );
                          }
                        : null,
                    child: const Text('동의'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      // 취소 버튼 클릭 시 처리 로직
                      Navigator.of(context).pop();
                    },
                    child: const Text('취소'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}