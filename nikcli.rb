# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-20T18:16:20.602Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.377.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.377.0/nikcli-ai-darwin-x64.zip"
      sha256 "b8086d885098759d50f4dff37b315b158e94ac95f0ce68fcc53321f42240eb79"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.377.0/nikcli-ai-darwin-arm64.zip"
      sha256 "ecf54481ce282a9e575e0692cec8402621dbd8fe72fa80e2d49359ccaa1817d5"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.377.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "6550422a3173742fe9b6961249fe08b9bca1fe205c74b5b9d9651bf62334b76a"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.377.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "b0529e8c999c85bcd739ab63babb130242c9107d465ee89806e242345b757d43"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

