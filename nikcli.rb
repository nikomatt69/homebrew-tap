# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-21T21:49:24.147Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.188.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.188.0/nikcli-ai-darwin-x64.zip"
      sha256 "f879e8392df3c15ad3aa23a39ce5f7c2090befa1ffc08cfce80de9a8de595cde"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.188.0/nikcli-ai-darwin-arm64.zip"
      sha256 "88bc05c16597ae201cc79da57ad20bbc7078048f4524928dc830d87a98ea1e82"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.188.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "fe13337d60968e10b3f303eb12724bc47a9fabf3c3e297a741164b09334385ac"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.188.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "feaa7103f1f353481d1d45ee7fa396881e49298abfa08b6f2d02171e9de30f15"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

