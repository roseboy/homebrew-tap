# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Httpcase < Formula
  desc "接口自动化测试工具"
  homepage "https://github.com/roseboy/httpcase"
  version "1.0.8-beta"
  license "MulanPSL2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/roseboy/httpcase/releases/download/v1.0.8-beta/httpcase_1.0.8-beta_darwin_x86_64.tar.gz"
      sha256 "6956d98c264a238a6b35333bfa799227df8bf04b17f88211791341590fb29986"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/roseboy/httpcase/releases/download/v1.0.8-beta/httpcase_1.0.8-beta_linux_x86_64.tar.gz"
      sha256 "fbbedcb246608900e718f265d65be1a54b062f35eb83414b5640d74e365547c6"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/roseboy/httpcase/releases/download/v1.0.8-beta/httpcase_1.0.8-beta_linux_armv6.tar.gz"
      sha256 "0db6d022dff1d46ba833ace8885c4c1545e5b3e0c1298dc5dcd51cd37c6ee6bb"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/roseboy/httpcase/releases/download/v1.0.8-beta/httpcase_1.0.8-beta_linux_arm64.tar.gz"
      sha256 "daecba221cad963757e002e09871e3e34dfa50cd9bcff89ca4a43847e53c8cf6"
    end
  end

  depends_on "go" => :optional
  depends_on "git"

  def install
    bin.install "hc"
  end

  test do
    system "#{bin}/hc version"
  end
end
